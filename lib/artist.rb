require 'pry'
# An artist has many songs and
# many genres through its songs
class Artist
  attr_accessor :name, :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    #What are the genre's of this artist's songs?
    Song.all.collect do |song|
      # binding.pry
      @genres = song.genre
    end
  end
end
