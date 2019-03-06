require 'pry'
# Songs belong to an artist and belong to a genre.
class Song
  @@all = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.all
    @@all
  end
end
