class Owner
  attr_reader :name, :countries
  attr_accessor :points

  OWNERS = {
    "Nick" => ["Germany", "Republic of Ireland"],
    "Brad" => ["France", "Albania"],
    "Luke" => ["Spain", "Iceland"],
    "Mark" => ["England", "Slovakia"],
    "Rik" => ["Belgium", "Romania"],
    "Dean" => ["Portugal", "Czech Republic"],
    "Matt" => ["Italy", "Wales"],
    "Jarred" => ["Croatia", "Turkey"],
    "John K." => ["Austria", "Sweden"],
    "Eric" => ["Switzerland", "Ukraine"],
    "John Z." => ["Poland", "Russia"]
  }

  def self.make_owners(teams)
    # owners = %W[Brad Nick Luke Mark Rik Dean Matt Koss Klocke Eric John]
    # owners.map { |owner| self.new(owner)}
    owners_array = []
    OWNERS.each do |name, countries|
      owner = self.new(name)
      countries.each do |country|
        team = teams[country]
        owner.countries << team
        owner.points += team.points
      end
      owners_array << owner
    end
    return owners_array
  end

  def initialize(name)
    @name = name
    @countries = []
    @points = 0
  end
end
