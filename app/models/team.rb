class Team
  attr_reader :name, :flag, :points, :played

  def add_owner

  end

  def initialize(team_hash)
    @name = team_hash['team']
    @flag = team_hash['crestURI']
    @points = team_hash['points']
    @played = team_hash['playedGames']
  end
end
