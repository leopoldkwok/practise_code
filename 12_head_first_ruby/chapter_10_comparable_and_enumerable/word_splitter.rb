class WordSplitter

	include Enumerable # Mix in Enumerable

	attr_accessor :string # holds the string we want to split

	def each # The Enumerable methods we will be calling this
		string.split(" ").each do |word| # split the string into words (split it on space characters) and process each word
			yield word # Yield the current word to the block that was passed to "each"
		end
	end
end

splitter  = WordSplitter.new

splitter.string = "how do you do"

p splitter.find_all {|word| word.include?("d")} # find all items for which the block returns true
p splitter.reject {|word| word.include?("d")} # Reject items for which the block returns true
p splitter.map {|word|word.reverse} # Returns an array with all of the block's return values

p splitter.any? {|word| word.include?("e")} # This method returns true if the block returns true for any item
p splitter.count
p splitter.first
p splitter.sort # An array with all the items sorted

# splitter.string = "one two three four" # Here's the string we want to split

# splitter.each do |word| # The block will receive each word as a parameter
# 	puts word # print the current word
# end