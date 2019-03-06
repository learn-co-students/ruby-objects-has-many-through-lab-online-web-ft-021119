class Genre

  attr_accessor :genre_name

  @@all = []

  def initialize(genre_name)
    @genre_name = genre_name
    @@all << self
  end

  def name
    @genre_name
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

end
