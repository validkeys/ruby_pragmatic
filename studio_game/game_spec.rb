require_relative 'game'

describe Game do

	before do
		@game = Game.new("Test Game")

		@initial_health = 100
		@player = Player.new("Moe", @initial_health)

		@game.add_player(@player)

		@die = Die.new
		@roll = @die.roll
	end

	it "should roll a number between 1 and 6" do
	  @roll.should be_between(1,6)
	end

	it "w00ts the player if a high number is rolled" do
		Die.any_instance.stub(:roll).and_return(6)
		@game.play

		@player.health.should == @initial_health + 15
	end

	it "Blams the player if a low number is rolled" do
		Die.any_instance.stub(:roll).and_return(2)
		@game.play

		@player.health.should == @initial_health - 10
	end

	it "Nothing happens if a medium number is rolled" do
		Die.any_instance.stub(:roll).and_return(3)
		@game.play

		@player.health.should == @initial_health
	end		

end