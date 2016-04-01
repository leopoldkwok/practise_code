# class Dog
# 	def talk
# 		puts "Bark!"
# 	end

# 	def move(destination)
# 		puts "Running to the #{destination}."
# 	end
# end

# def talk(animal_type, name)
# 	if animal_type == "bird"
# 		puts "#{name} says Chirp! Chirp!"
# 	elsif animal_type == "dog"
# 		puts "#{name} says Bark!"
# 	elsif animal_type == "cat"
# 		puts "#{name} says Meow!"
# 	end
# end

class Dog
	# we only define the reader methods automatically, since we're defining writer methods ourselves
	attr_reader :name, :age

	def name=(value) # attribute writer method for @name
		if value == "" # if the name is blank print an error message
			raise "Name can't be blank!"
		else
			@name = value # set the instance variable only if the name is valid. This statement won't be reached if "raise" is called
		end
	end

	def age=(value) # attribute writer method for "@age"
		if value < 0 # If age is negative, print an error message.
			raise "An age of #{value} isn't valid!" # data validation
		else
			@age = value # set the instance variable only if the age is valid
		end
	end

	def move(destination) #Instance method
		puts "#{@name} runs to the #{destination}."
	end

	def talk # instance method
		puts "#{@name} says Bark!"
	end

	def report_age # instance method
		puts "#{@name} is #{@age} years old."
	end


end

dog = Dog.new 		# Creating a new Dog instance
dog.name = "Daisy" 	# Initializing attributes
dog.age = 3 		# Initializing attributes
dog.report_age 		# calling instance methods
dog.talk			# calling instance methods
dog.move("bed")		# calling instance methods

	# glitch = Dog.new
	# glitch.name = ""
	# glitch.age = -256
	# glitch.report_age

	# anonymous = Dog.new
	# anonymous.name = ""

	# joey = Dog.new
	# joey.age = -1
