# Basic blocks
3.times do
	puts "Looper!"
end

3.times do |num|
	puts "Looper #{num}!"
end

puts "\n"

1.upto(3) do
	puts "Looper!"
end

1.upto(3) do |num|
	puts "Looper #{num}!"
end

# Array blocks

numbers = (1..10).to_a

evens 	= numbers.select { |n| n.even? 	}

odds 	= numbers.select { |n| n.odd? 	}
# -- OR --
odds	= numbers.reject { |n| n.even? 	}

# -- OR --
# any items in the array that pass the test
# are put into the first (evens) array
# otherwise, they are put into the second (odds)
evens, odds = numbers.partition {|n| n.even? }


# Sum the numbers
numbers.reduce { |sum, n| sum + n}
# -- or --
numbers.reduce(:+)

