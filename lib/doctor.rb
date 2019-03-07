require 'pry'
class Doctor
  attr_accessor :appointments
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def appointments
    @appointments
  end

  def new_appointment(patient, date)
    # binding.pry
     new_appt = Appointment.new(date, patient, self)
     self.appointments << new_appt
    # binding.pry
  end


end
