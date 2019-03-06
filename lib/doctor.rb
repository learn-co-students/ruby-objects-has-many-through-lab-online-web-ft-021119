require 'pry'
class Doctor

	attr_accessor :name



	@@all= []

		def initialize(name)
			@name = name
		 	
			@@all << self
			#binding.pry
		end

		def self.all
				@@all
		end


		def new_appointment(patient, date)
			#binding.pry
			appointment = Appointment.new(date, patient, self)
			#binding.pry
		end



		def appointments
			Appointment.all.collect do |appointment|
				appointment
			end
		end



		def patients
			appointments.collect do |appointment|

				#binding.pry			
				appointment.patient

			end
		end


end

