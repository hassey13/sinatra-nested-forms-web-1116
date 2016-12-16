class Pirate

	attr_accessor :name, :height, :weight

	@@all = []

	def initialize(name,height,weight)
		@name = name
		@height = height
		@weight = weight
	end

	def add_ship(ship)
		@@all << ship
	end

	def self.clear
		@@all.clear
	end

end