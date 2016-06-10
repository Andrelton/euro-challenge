class FootballData
  include HTTParty
  base_uri "http://api.football-data.org"

  def initialize
    @api_key = ENV['FOOTBALL_DATA_API_KEY']
    @headers = { "X-Auth-Token" => @api_key}
  end

  def get_euro_data
    euro_data = self.class.get(
      "/v1/soccerseasons/424/leagueTable",
      headers: @headers
      )
    teams = euro_data['standings'].map { |_, group_data| group_data }
    return teams.flatten
  end
end
