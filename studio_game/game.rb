require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

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
		@players.each do |player|
			GameTurn.take_turn(player)
			puts player
		end
	end
end