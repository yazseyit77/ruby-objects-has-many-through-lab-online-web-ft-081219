class Artist
  attr_accessor :name
  attr_accessor :name, :songs, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @genres = []
    @songs = []
  end

  # def new_song(song, genre)
  #   Song.new(name, genre, self)
  #   @songs = []
  #   @genres = []
  # end

  def new_song(song, genre)
    song = song.new_song(song, genre)
    @songs << song
    @genres << song
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.all
    @@all
  end

  def genres
    somgs.map {|song| song.genre}
  end

end
