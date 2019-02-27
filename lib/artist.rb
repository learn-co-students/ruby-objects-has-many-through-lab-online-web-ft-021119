require 'pry'

class Artist
  attr_accessor :name, :genre
  @@all = []
  def initialize(name)
    binding.pry
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = self.new(name)
    song.genre = genre
  end

end
