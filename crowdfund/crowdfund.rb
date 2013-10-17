require_relative 'project'


project1 = Project.new("Riwanda",1000,10000)
project2 = Project.new("Riwanda2",1000,10000)
project3 = Project.new("Riwanda3",1000,10000)

projects = [project1, project2, project3]

looper(projects)

puts projects.size

projects.pop

projects.push(Project.new("Kalster",1000000,100000000))

looper(projects)