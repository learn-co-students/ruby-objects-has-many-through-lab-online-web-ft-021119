
require 'pry'
class Genre

	@@all =[]

	attr_accessor :name


			def initialize(name)
				@name = name
				
				@@all << self

			end

			def self.all
		 		@@all
		    end

		    def songs
		    	
	       		 #binding.pry
	        	 Song.all.collect do |songs|
	         		   songs
	        	 #binding.pry
     		end
     		end
		    

		    def artists
		    	songs.collect do |songs|
		    		songs.artist
		    		#binding.pry
		    end
		    end

end