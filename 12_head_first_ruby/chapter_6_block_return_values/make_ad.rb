def find_adjective(string) # We'call this method below, to find adjective within each review
	words = string.split(" ") # split the sentences into words
	index = words.find_index("is") # find the array index of "is"
	words[index+1] # Find the word After "is" and return it
end

lines = [] # We need to create this variable outside the block
File.open("reviews.txt") do |review_file| # File object is passed as a parameter to the block
	lines = review_file.readlines # Read everyline in the file to an array
end # when the block finishes, the file is automatically closed for you!

relevant_lines = lines.find_all { |line| line.include?("Truncated")} #Find lines that include the movie name
reviews = relevant_lines.reject {|line| line.include?("--")} #Exclude reviewer bylines

# call our methid. It's return value will be the return value of the block
adjectives = reviews.map do |review| # Process each review
	adjective = find_adjective(review) #Find the adjective
	"'#{adjective.capitalize}'" # Return the adjective, capitalized and surrounded by quotes
end

puts "The critics agree, Truncated is:"
puts adjectives










# adjectives = []
# reviews.each do |review| # For each review in the array...
# 	adjectives << find_adjective(review)
# end

# puts relevant_lines



# relevant_lines = []

# # lines.each do |line| # The current line is passed to the block as a parameter
# # 	if line.include?("Truncated")
# # 		relevant_lines << line # Add the current line to the array of reviews
# # 	end
# # end