require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

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

	def play(num_rounds = 1)
		1.upto(num_rounds) do |round|

			puts "\nRound \##{round}:"

			@players.each do |player|
				GameTurn.take_turn(player)
				puts player
			end			
		end

		treasures = TreasureTrove::TREASURES
		puts "\nThere are #{treasures.size} treasures in the trove"

		treasures.each do |treasure|
			puts treasure.name.to_s.capitalize.ljust(15,'.') + treasure.points.to_s
		end
	end

	def print_stats
		strong, wimpy = @players.partition { |player| player.strong? }
		print("Strong", strong)
		print("Wimply", wimpy)		
	end

	def print(title, data)
		puts "\n#{title} Players: \n"
		data.each { |player| puts player }		
	end

	def print_scoreboard
		puts "\nSCOREBOARD:\n"
		@players.sort.each do |player|
			puts player.name.ljust(15,'.') + player.score.to_s
		end
	end
end