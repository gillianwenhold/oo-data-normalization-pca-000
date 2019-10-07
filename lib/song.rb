require "tempfile"

class Song
  attr_accessor :artist, :title

  def initialize
    @title = ""
  end

  def slugify
    contents = self.artist.name + " - " + self.title
    new_title = self.title.downcase.gsub(" ", "_")
    file = Tempfile.new([new_title, ".txt"], "tmp")
    file.write(contents)
    file.close
  end
end
