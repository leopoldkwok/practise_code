lines = [] # Create a variable that will still be accessible after the block
File.open("votes.txt") do |file| # Open the file and pass it to the block
	lines = file.readlines # Store all the file lines in an array
end

votes = Hash.new(0) # Create a new hash with a default object of "0"

lines.each do |line|
	name = line.chomp # Remove the new line character
	name.upcase! # Change the name to ALL CAPS before using it as a hash key
	votes[name] += 1 # Increment the total for the current name
end

votes.each do |name, count|
	puts "#{name}: #{count}"
end
