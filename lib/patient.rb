class Patient
  attr_accessor :name, :doctors, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    #@doctor.patients << self
    @doctors = []
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(doctor,date)
    appointment = Appointment.new(date,self, doctor)
    @appointments<< appointment
    @doctors << doctor
    appointment
  end


  def artists
    self.songs.map {|song| song.artist}
  end
end
