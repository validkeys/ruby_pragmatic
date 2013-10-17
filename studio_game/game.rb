require_relative 'player'

class Game

	attr_reader :name

	def initialize(name)
		@name = name
		@players = []
	end

	def add_player(player)
		@players << player
	end

	def to_s
		"There are #{@players.size} players in #{@name}"
	end

	def play
		puts self
		@players.each do |player|
			puts player
		end
	end
end