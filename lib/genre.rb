class Genre
<<<<<<< HEAD
  attr_accessor :name, :songs, :artist
=======
  attr_accessor :name, :songs
>>>>>>> 2c6fec5977fd0cbede4d1f6129ddddb26bbd0a77
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
<<<<<<< HEAD
    Song.all.each { |song| song.genre ==self }
  end

  def artists
    songs.map {|song| song.artist }
=======
    songs.each { |song| song.genre  }
>>>>>>> 2c6fec5977fd0cbede4d1f6129ddddb26bbd0a77
  end

end
