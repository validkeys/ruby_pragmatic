def introduce(project, funding=100)
	"As of #{time} #{project} has $#{funding} in funding"
end
def time
	Time.new.strftime('%A')
end

puts "Projects:"
puts introduce("Project 1", 1000)
puts introduce("Project 2")
puts introduce("Project 3", 10000)