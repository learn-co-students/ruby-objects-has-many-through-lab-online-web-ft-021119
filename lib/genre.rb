require "pry"
class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    all = []
    binding.pry
    Song.all.each do |songs|
      binding.pry
      if songs.genre == self
        binding.pry
        all << songs
      end
    end
    all
  end
end
