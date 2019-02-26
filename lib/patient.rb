require "pry"
class Patient 
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end 
  def self.all
    @@all 
  end 
  def new_appointment(doctor, date)
    new = Appointment.new(self, date, doctor)
  end 
  def appointments 
    Appointment.all.select do |appt|
      appt.patient == self 
    end 
  end 
  def doctors
    Appointment.all.collect do |appt|
      if appt.patient == self 
        appt.doctor
      end
    end
  end
end