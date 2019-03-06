class Patient

  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |appoint|
      appoint.patient == self
    end
  end

  def doctors
    appointments.map do |appoint|
      appoint.doctor
    end
  end

  def self.all
    @@all
  end

end
