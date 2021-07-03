require 'pry'
class Doctor
  attr_accessor :appointments, :patients
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @patients = []
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def appointments
    Appointment.all.select{|appt| appt.doctor == self}
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    Appointment.all.select do |appt|
      if appt.doctor == self
        @patients << appt.patient
      end
    end
    @patients
  end


end
