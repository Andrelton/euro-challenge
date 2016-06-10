class Team
  attr_reader :name, :flag, :points

  def initialize(team_hash)
    @name = team_hash['team']
    @flag = team_hash['crestURI']
    @points = team_hash['points']
  end
end
