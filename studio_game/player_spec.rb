# FOR HOME INSTALL:
# Install package RubyTest into Sublime
# Access the RubyTest.sublime-settings
# update check_for_rvm to be true
# run cmd+shift+r or cmd+shift+t
require_relative 'player'

describe Player do

	before do
		@initial_health = 60
		@player 		= Player.new("larry",@initial_health)
	end

	it "has a capitalized name" do
		@player.name.should == "Larry"
	end

	it "has an initial health" do
		@player.health.should == @initial_health
	end

	it "has a string representation" do
		@player.to_s.should == "I'm #{@player.name} with a health of #{@initial_health} and a score of 65"
	end

	it "computes a score as the sum of its health and length of name" do
		@player.score.should == @player.name.length + @initial_health
	end

	it "increases health by 15 when w00ted" do
		@player.w00t
		@player.health.should == @initial_health + 15
	end

	it "decreases health by 10 when blammed" do
		@player.blam
		@player.health.should == @initial_health - 10		
	end

	context "strong player" do
	  
		before do
			@initial_health = 150
			@player = Player.new("Hank", @initial_health)
		end

		it "should be strong" do
		  @player.should be_strong
		end

	end

	context "weak player" do
	  before do
	  	@player = Player.new("Moe", 100)
	  end
	  
	  it "should be weak" do
	  	@player.should_not be_strong  
	  end
	end

	context "in a collection of players" do
	  before do
	  		@player1 = Player.new("larry",	150)
			@player2 = Player.new("curly", 	65)
			@player3 = Player.new("moe",	85)

			@players = [@player1, @player2, @player3]
	  end

	  it "should be sorted in descending order" do
	    @players.sort.should == [@player1, @player3, @player2]
	  end
	end

end