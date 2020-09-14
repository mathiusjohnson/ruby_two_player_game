class Player

	attr_reader :name
	attr_accessor :lives

	def initialize(name)
		@name=name
		@lives=3
	end
	
	def name
		@name
	end
	
	def lives
		@lives
	end

	def dead?
		@lives <= 0
	end

	def loses_life
		@lives -= 1
	end

end
