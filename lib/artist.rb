class Artist
  attr_accessor :name
  @@all = []



  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre, self)
    song.artist = self

  end

  def songs
    Songs.all.collect do |song|
      if song.artist == self
        song
      end
    end
  end

  

end
