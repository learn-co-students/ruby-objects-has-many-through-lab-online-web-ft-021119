require "pry"
class Doctor 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  def self.all
    @@all 
  end 
  def new_appointment(patient, date)
    new = Appointment.new(patient, date, self)
  end 
  def appointments 
    Appointment.all.select do |appt|
      appt.doctor == self
    end 
  end 
  def patients 
    Appointment.all.map do |appt|
      appt.patient
    end 
  end 
end 