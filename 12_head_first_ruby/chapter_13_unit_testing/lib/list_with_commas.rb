class ListWithCommas
	attr_accessor :items # set this to the array of items you want to join

	def join
		if items.length == 1
			return items[0]
		elsif items.length == 2
			return "#{items[0]} and #{items[1]}"
		end

		last_item = "and #{items.last}" #add the word "and" before the last item
		other_items = items.slice(0, items.length - 1).join(', ') # take the first through second-to-last items and join them with commas
		"#{other_items}, #{last_item}" # return the whole thing as one string
	end
end

# two_subjects = ListWithCommas.new
# two_subjects.items = ['my parents', 'a rodeo clown']
# puts "A photo of #{two_subjects.join}"


# three_subjects = ListWithCommas.new
# three_subjects.items = ['my parents', 'a rodeo clown', 'a prize bull']
# puts "A photo of #{three_subjects.join}"

