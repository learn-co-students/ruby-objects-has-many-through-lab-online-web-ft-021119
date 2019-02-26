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
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appnt|
      appnt.doctor == self
    end
  end

  def patients
    appointments.collect do |appnt|
      appnt.patient
    end
  end
end
