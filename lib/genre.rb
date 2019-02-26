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
    Song.all do |song|
      song.genre == self 
    end 
  end 
  def artists #error: artists has many artists, through songs
    Artist.all.each do |artist|
      artist
    end
  end
end 