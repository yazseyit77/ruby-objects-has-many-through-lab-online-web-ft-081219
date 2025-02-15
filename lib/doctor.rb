class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def self.all
    @@all
  end

  def patients
    appointments.map {|appointment| appointment.patient }
  end

  def new_appointment(date, patient)
    Appointment.new(patient, date, self)
  end

end
