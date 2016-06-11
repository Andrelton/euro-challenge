class Owner
  attr_reader :name, :countries

  OWNERS = {
    "Brad" => ["France", "Albania"],
    "Nick" => ["Germany", "Republic of Ireland"],
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
        owner.countries << teams[country]
      end
      owners_array << owner
    end
    return owners_array
  end

  def initialize(name)
    @name = name
    @countries = []
  end
end
