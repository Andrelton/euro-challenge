get '/' do
  football_data_client = FootballData.new
  euro_data = football_data_client.get_euro_data
  @teams = euro_data.map do |team_hash|
    Team.new(team_hash)
  end
  erb :table
end
