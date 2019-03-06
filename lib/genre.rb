require 'pry'
# A genre has many songs
class Genre
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def songs
    @songs
  end
end
