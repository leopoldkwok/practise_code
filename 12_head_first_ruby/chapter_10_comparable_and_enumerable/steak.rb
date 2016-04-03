class Steak

	include Comparable

	GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" =>1 } # Define the constant within the class body

	attr_accessor :grade

	def <=>(other)
		# grade_scores = {"Prime" => 3, "Choice" => 2, "Select" => 1} # This has lets us convert the "grade" string to a number, for easy comparison

		if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
			return -1
		elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
			return 0
		else
			return 1
		end
		# returns true if the numeric score of this steak's grade is greater than the numeric score of the other steak. Otherwise, returns false
	end
end

prime = Steak.new
prime.grade = "Prime"
choice = Steak.new
choice.grade = "Choice"
select = Steak.new
select.grade = "Select"

puts "prime > choice: #{prime > choice}"
puts "prime < select: #{prime < select}"
puts "select == select: #{select == select}"
puts "select <= select: #{select <= select}"
puts "select >= choice: #{select >= choice}"
print "choice.between?(select, prime): "
puts choice.between?(select, prime)

# if first_steak > second_steak
# 	puts "I'll take #{first_steak.inspect}."
# end

