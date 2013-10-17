require_relative('game')

player1 = Player.new("larry",60)
player2 = Player.new("curly")
player3 = Player.new("moe",25)

players = [player1, player2, player3]

game = Game.new("Knuckleheads")

players.each do |player|
	game.add_player(player)
end

game.play
puts game.name