require_relative 'project'

describe Project do

	before do
		@funding 	= 10
		@target 	= 100
		@project 	= Project.new("Test",@funding,@target)
	end
	
	it "should have a read/write name" do
		@project.name.should == "Test"
		@project.name = "Tester"
		@project.name.should == "Tester"
	end

	it "should have a read funding var" do
		@project.funding.should == @funding
	end

	it "should have a read target var" do
		@project.target.should == @target
	end

	it "should debit funds" do
		@project.debit(10)
		@project.funding.should == @funding - 10
	end

	it "should credit funds" do
		@project.credit(10)
		@project.funding.should == @funding + 10
	end

	it "should be able to calculate the difference between current funding and the target" do
		@project.remainder.should == @target - @funding
	end

	it "should have a status" do
		@project.status.should == "#{@name} has $#{@funding} in funding which is $#{@project.remainder} away from it's target of $#{@target}"
	end

end