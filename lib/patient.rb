require 'pry'
class Patient
  attr_accessor :appointments, :doctors
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @doctors = []
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def doctors
    Appointment.all.select do |appt|
      if appt.patient == self
        @doctors << appt.doctor
      end
    end
    @doctors
  end
end
