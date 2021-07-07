require "pry"
class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def songs
    all_songs = []
    Song.all.each do |song|
      if song.genre == self
        all_songs << song
      end
    end
    all_songs
  end

  def artists
    all_artists = []
    self.songs.each {|song| all_artists << song.artist}
    all_artists
  end
end
