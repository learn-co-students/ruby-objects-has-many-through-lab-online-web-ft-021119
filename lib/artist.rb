require 'pry'
class Artist

	attr_accessor :name



	@@all = []

		def initialize(name)
			@name = name
		 	
			@@all << self
			#binding.pry

		end




				def self.all
					@@all 
				end

				def new_song(name, genre)
						song = Song.new(name, self, genre)
						#binding.pry




				end

				
				def songs
					#binding.pry
					Song.all.select do |songs|
						songs.artist == self
					end

				end
				def genres
					Song.all.collect do |songs|
						#binding.pry
						songs.genre
					end

				end

			

		end