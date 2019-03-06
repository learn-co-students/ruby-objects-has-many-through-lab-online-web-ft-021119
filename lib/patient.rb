
require 'pry'
class Patient
attr_accessor :name

@@all =[]


			def initialize(name)
				@name = name
				@@all << self
			end

			def new_appointment(doctor, date)
				#binding.pry
				appointment = Appointment.new(doctor, self, date)
			end

			def self.all
 				@@all

 			end

 			def appointments
 				Appointment.all.select do |appointment|
 					#binding.pry
 					appointment.patient == self
 				end
 				end

 				def doctors
 					appointments.collect do |appointment|
 						#binding.pry
 						appointment.date
 					end
 				end





end