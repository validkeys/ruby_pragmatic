class Player

	attr_reader :health #read-only
	attr_accessor :name #read-and-write

	def initialize(name, health=100)
		@name 		= name.capitalize
		@health 	= health
		@treasures 	= Hash.new(0)
	end

	# overriding the attr_accessor
	# so that we can capitalize
	def name=(name)
		@name = name.capitalize
	end

	# derived or "virtual" attribute
	def score
		@name.length + @health
	end

	def strong?
		@health > 100
	end

	def to_s
		"I'm #{@name} with a health of #{@health} and a score of #{score}"		
	end

	def w00t
		@health += 15
		puts "#{@name} got w00ted!"
	end

	def <=>(other_player)
		other_player.score <=> score
	end

	def blam
		@health -= 10
		puts "#{@name} got blammed!"
	end
end