class Candidate
	attr_accessor :name, :age, :occupation, :hobby, :birthplace # Set up attribute accessors

	# we replace the hash parameter with keywords and default values
	def initialize(name, age:, occupation: , hobby: nil, birthplace: "Sleepy Creek")
		# use the parameter to set the object attributes
		self.name = name
		self.age = age
		self.occupation = occupation
		self.hobby = hobby
		self.birthplace	 = birthplace
	end
end

def print_summary(candidate)
	puts "Candidate: #{candidate.name}"
	puts "Age: #{candidate.age}"
	puts "Occupation: #{candidate.occupation}"
	puts "Hobby: #{candidate.hobby}"
	puts "Birthplace: #{candidate.birthplace}"
end

p Candidate.new("Amy Nguyen")



# Candidate.new("Amy Nguyen", age: 37)

# p Candidate.new("Amy Nguyen")
# p Candidate.new("Carl Barnes")
# p Candidate.new("Carl Barnes", occupasastion: "Attorney")


# candidate1 = Candidate.new("Carl Barnes", age: 49, occupation: "Attorney")
# candidate2 = Candidate.new("Amy Nguyen", age: 37, occupation: "Engineer")

# p candidate1, candidate2

# If a hash uses symbols as keys, hash literals let you leave the colon(:) if the symbol and replace the hash rocket (=>) with a colon
# candidate = Candidate.new("Amy Nguyen", age: 37, occupation: "Engineer", hobby: "Lacrosse")


# p candidate

# Ruby lets you leave the curly braces off as long as the hash argumenet is the final argument
# candidate = Candidate.new("Carl Barnes", :age => 49, :occupation => "Attorney", :birthplace => "Miami")



# candidate = Candidate.new("Amy Nguyen", {:age => 37, :occupation => "Engineer", :hobby => "Lacrosse", :birthplace => "Seattle"})

# candidate = Candidate.new("Carl Barnes", {:age => 49, :occupation => "Attorney", :birthplace => "Miami"}) #omitted attributes default to nil



# candidate = Candidate.new("Carl Barnes", 49, "Attorney", nil, "Miami")
# print_summary(candidate)