require 'pry'
class Patient
attr_accessor :name, :date, :patient, :doctor
@@all = []

  def initialize(name)
    @name = name
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all do |appointment|
      appointment.doctor == self
    end
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end
  end

end
