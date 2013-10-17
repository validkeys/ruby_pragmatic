class Project

	attr_accessor 	:name
	attr_reader 	:funding, :target

	def initialize(name, funding, target)
		@name 		= name
		@funding 	= funding
		@target 	= target
	end

	def debit(val)
		@funding -= val
		puts "#{@name} lost some funds!"
	end

	def credit(val)
		@funding += val
		puts "#{@name} got some funds!"
	end

	def remainder
		@target - @funding
	end

	def status
		puts "#{@name} has $#{@funding} in funding which is $#{remainder} away from it's target of $#{@target}"
	end
end

def looper(projects)
	projects.each do |project|
		project.status
		puts project.target
		project.credit(1000)
	end	
end



project1 = Project.new("Riwanda",1000,10000)
project2 = Project.new("Riwanda2",1000,10000)
project3 = Project.new("Riwanda3",1000,10000)

projects = [project1, project2, project3]

looper(projects)

puts projects.size

projects.pop

projects.push(Project.new("Kalster",1000000,100000000))

looper(projects)