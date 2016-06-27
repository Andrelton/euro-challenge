class Team
  attr_reader :name, :flag
  attr_accessor :points, :played

  def add_owner

  end

  def initialize(team_hash)
    @name = team_hash['team']
    @flag = team_hash['crestURI']
    @played = team_hash['playedGames']
    @points = team_hash['points']
  end
end
