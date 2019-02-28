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
    Song.new(name, self, genre)
  end

  def songs
    all_songs = []
    Song.all.each do |song|
      if song.artist == self
        all_songs << song
      end
    end
    all_songs
  end

  def genres
    all_genres = []
    self.songs.each {|song| all_genres << song.genre}
    all_genres
  end
  #
  # def genres
  #   all_genres = []
  #   self.songs.each do |song|
  #     if song.artist == self
  #       all genres << song.genre
  #     end
  #   end
  #   all_genres
  # end


end
