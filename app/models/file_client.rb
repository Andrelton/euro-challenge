class FileClient

  def get_euro_points
    points_file_path = File.expand_path("../../../points.txt", __FILE__)
    # points_file = File.open(points_file_path)
    # contents = points_file.read

    euro_standings = {}
    CSV.foreach(points_file_path, headers: true) do |row|
      # team = { row[0] => [row[1], row[2]]}
      # team_points.push(team)
      euro_standings[row[0]] = [row[1].to_i, row[2].to_i]
    end
    return euro_standings
  end
end