require_relative 'game'

def game

	player2 = Player.new("curly", 	75)
	player3 = Player.new("moe",		65)
	player1 = Player.new("larry",	150)

	players = [player1, player2, player3]

	game = Game.new("Knuckleheads")

	players.each do |player|
		game.add_player(player)
		# player.w00t
		# player.w00t
		# player.blam
	end

	game.play(3)
	puts "\n#{game.name} Statistics:"
	game.print_stats
	game.print_scoreboard

end

game