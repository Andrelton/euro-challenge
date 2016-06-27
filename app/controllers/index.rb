get '/' do
  euro_api_data = FootballData.new.get_euro_data

  file_client = FileClient.new
  csv_euro_points = file_client.get_euro_points
  eliminated_teams = file_client.get_euro_losers

  teams = {}
  euro_api_data.each do |team_hash|
    new_team = Team.new(team_hash)

    updated_info = csv_euro_points[new_team.name]
    if updated_info
      new_team.played = updated_info[0]
      new_team.points = updated_info[1]
    end
    if eliminated_teams.include?(new_team.name)
      new_team.eliminated = true
    end
    teams[team_hash['team']] = new_team
  end

  @owners = Owner.make_owners(teams)
  @owners = @owners.sort_by { |owner| owner.points }.reverse
  erb :table
end

get '/test' do
  losers = FileClient.new.get_euro_losers
  losers.inspect
end
