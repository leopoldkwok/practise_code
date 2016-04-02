class Animal

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

class Dog < Animal

	def to_s
		"#{@name} the dog, age #{age}" # This return value is the format we'd like to see
	end
end

class Bird < Animal

	def talk # overrides the inherited method
		puts "#{@name} says Chirp! Chirp!"
	end

end

class Cat < Animal

	def talk # overrides the inherited method
		puts "#{@name} says Meow!"
	end

end

class Armadillo < Animal

	def move(destination) # Overrides the "move" method from the superclass
		puts "#{@name} unrolls!" # The new functionality
		# super(destination) # Explicitly specify the arguement
		super #autoforward the same argument(s) "move" was called with
	end
end

lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 4

rex = Dog.new
rex.name = "Rex"
rex.age = 2

puts lucy, rex

puts lucy.to_s, rex.to_s

# puts Dog.superclass
# puts Animal.superclass



# puts rex.methods

dillon = Armadillo.new
dillon.name = "Dillon"
dillon.move("burrow")

whiskers = Cat.new
whiskers.name = "Whiskers"
fido = Dog.new
fido.name = "fido"
polly = Bird.new
polly.name = "Polly"

polly.age = 2
polly.report_age
fido.move("yard")
whiskers.talk
polly.talk