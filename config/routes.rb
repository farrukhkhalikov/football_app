Rails.application.routes.draw do

  root to: 'home#index'
  get "/teams" => 'home#teams', as: :teams
  get "/leagues" => 'home#leagues', as: :leagues
  get "/players" => 'home#players', as: :players
  get "/stadiums" => 'home#stadiums', as: :stadiums
  post "/create_comment"=> 'home#create_comment', as: :create_comment
  get "/delete_comment"=> 'home#delete_comment', as: :delete_comment
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
