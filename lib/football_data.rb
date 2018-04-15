require "json"
require "faraday"

module FootballData
  DEFAULT_API_KEY = nil
  DEFAULT_API_VERSON   = "alpha"
  DEFAULT_RESPONSE_CONTROL = "full"

  API_ENDPOINT = "http://api.football-data.org"
  
  class << self
    attr_writer :api_version, :api_key, :response_control

    def configure
      raise "don't you wanna configure it?" unless block_given?
      yield self
      @api_version ||= DEFAULT_API_VERSON
      @response_control ||= DEFAULT_RESPONSE_CONTROL
    end

    def reset!
      @api_key = DEFAULT_API_KEY
      @api_version = DEFAULT_API_VERSON
      @response_control = DEFAULT_RESPONSE_CONTROL
    end
    # main method of FootballData, fetch info of football matches and players
    # see 'http://api.football-data.org/documentation' for details
    #
    # @param resource [Symbol, String] one of :soccerseasons, :teams, :fixtures
    # @param subresource [Symbol, String]
    #   :soccerseasons => one of :fixtures, :teams, :leagueTable
    #   :teams => one of :fixtures, :players
    # @param params [Hash] the filter parameters, :id is also pass by params
    def fetch(resource, subresource = nil, params = {})
      id, filter = parse_params(params)
      path = "/#{@api_version}/#{resource}"
      path += "/#{id}/#{subresource}" if id
      path += "?#{filter}" if filter
      response = get(path)
      JSON.parse(response.body)
    end

    private

    def parse_params(params)
      id = params[:id]
      no_id_params = params.dup
      no_id_params.delete(:id)
      filter = no_id_params.map{ |key, val| "#{key}=#{val}" }.join("&")
      [id, filter]
    end

    def connection
      @connection ||= Faraday.new(url: API_ENDPOINT,
        headers: {"X-Auth-Token" => @api_key,
          "X-Response-Control" => @response_control})
    end

    def get(path)
      connection.get(path)
    end
  end
end