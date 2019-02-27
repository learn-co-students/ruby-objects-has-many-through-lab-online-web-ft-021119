class Genre
  attr_accessor :name, :artists, :songs

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


  def artists
    self.songs.map {|song| song.artist}
  end
end
