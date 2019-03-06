require 'pry'
# A genre has many songs
class Genre
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @artists = []
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def songs
    Song.all.collect do |song|
      @songs << song
    end
    @songs
  end

  def artists
    Song.all.collect do |song|
      # binding.pry
      @artists << song.artist
    end
    @artists
  end
end
