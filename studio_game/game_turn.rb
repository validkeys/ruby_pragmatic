require_relative 'player'
require_relative 'die'

module GameTurn
	def self.take_turn(player)
		die = Die.new
		case die.roll
		when 1..2
			player.blam
		when 5..6
			player.w00t
		end
	end
end