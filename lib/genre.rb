class Genre
  attr_accessor :name, :songs, :artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.each { |song| song.genre ==self }
  end

  def artists
    songs.map {|song| song.artist }
    songs.each { |song| song.genre  }
  end

end
