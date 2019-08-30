class Appointment
  attr_accessor :date, :patient, :doctor
  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  # def songs
  #   Song.all.each { |song| song.genre ==self }
  # end
  #
  # def artists
  #   songs.map {|song| song.artist }
  # end

end
