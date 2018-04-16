class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_competitions = Competition.fetch_all
  end

  def leagues
    @league_table = Competition.get_league_tables(params[:competition_id])
  end

  def teams
    @stadiums = Stadium.all
    @teams = Competition.get_teams(params[:competition_id])
  end

  def players
    @players = Competition.get_players(params[:team_id])
  end

  def stadiums
    @stadium = Stadium.find params[:stadium_id]
    query = "#{@stadium.state},#{@stadium.country}"
    api_key = "451864d3f1b8f323eb7e31b514e45831"
    f = Faraday.new(url: "http://api.openweathermap.org/data/2.5/find?q=#{query}&units=imperial&appid=#{api_key}")
    @weather_data = JSON.parse(f.get.body)["list"][0]
    @comments = @stadium.comments.order("created_at DESC")
  end

  def create_comment
    @comment = Comment.new(body: params[:body],stadium_id: params[:stadium_id])
    @comment.save
    @comments = Comment.where(stadium_id: params[:stadium_id]).order("created_at DESC")
  end


  def update_comment
    @comment = Comment.find(params[:comment_id])
    @comment.update_attributes(body: params[:body])
    @comments = Comment.where(stadium_id: @comment.stadium_id).order("created_at DESC")
  end

  def delete_comment
    @comment = Comment.find(params[:comment_id]).destroy
    @comments = Comment.where(stadium_id: @comment.stadium_id).order("created_at DESC")
  end

end
