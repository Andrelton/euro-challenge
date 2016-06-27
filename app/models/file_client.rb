require 'pry-byebug'

class FileClient

  def get_euro_points
    points_file_path = File.expand_path("../../../points.txt", __FILE__)
    points_file = File.open(points_file_path)
    contents = points_file.read
  end
end