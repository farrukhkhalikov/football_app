require 'football_data'
FootballData.configure do |config|
    # get api key at 'http://api.football-data.org/register'
    config.api_key = "7ee1754771f847a194768f8a877339d6"

    # default api version is 'alpha' if not setted
    config.api_version = 'v1'

    # the default control method is 'full' if not setted
    # see request section on 'http://api.football-data.org/documentation'
    config.response_control = 'minified'
end