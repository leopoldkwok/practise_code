class Dog

	#Creates methods to get current values of @name and @age
	attr_reader :name, :age

	# We create our own attribute writer methods, so we can check that the new values are valid

	def name=(value)
		if value == ""
			raise "Name can't be blank!"
		end
		@name = value
	end

	def age=(value)
		if value < 0
			raise "An age of #{value} isn't valid!"
		end
		@age = value
	end

	# Other instance for our Dog objects

	def talk
		puts "#{@name} says Bark!"
	end

	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end

	def report_age
		puts "#{@name} is #{@age} years old."
	end


end