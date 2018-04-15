class Competition

  # def self.api_path
  #   "/v1/competitions/"
  # end

  # def self.fetch_all
  #   response = RestClient.get("#{BASE_URL}#{api_path}")
  #   JSON.parse(response.body)
  # end

  # def self.get_teams(competition_id)
  #   response = RestClient.get("#{BASE_URL}/v1/competitions/#{competition_id}/teams")
  #   JSON.parse(response.body)["teams"]
  # end

  # def self.get_league_tables(competition_id)
  #   response = RestClient.get("#{BASE_URL}/v1/competitions/#{competition_id}/leagueTable")
  #   JSON.parse(response.body)
  # end

  # def self.get_team_data(team_id)
  #   response = RestClient.get("#{BASE_URL}/v1/competitions/#{competition_id}/leagueTable")
  #   JSON.parse(response.body)
  # end

  # def self.get_players(team_id)
  #   response = RestClient.get("#{BASE_URL}/v1/teams/#{team_id}/players")
  #   JSON.parse(response.body)
  # end

  def self.fetch_all
    FootballData.fetch(:competitions)
  end

  def self.get_teams(competition_id)
    FootballData.fetch(:competitions, :teams, id: competition_id)["teams"]
  end

  def self.get_league_tables(competition_id)
    FootballData.fetch(:competitions, :leagueTable, id: competition_id)
  end

  def self.get_team_data(team_id)
    FootballData.fetch(:teams, nil, id: team_id)
  end

  def self.get_players(team_id)
    FootballData.fetch(:teams, :players, id: team_id)["players"]
  end

end