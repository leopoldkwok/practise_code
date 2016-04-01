# class Bird
# 	def talk(name)
# 		puts "#{name} says Chirp! Chirp!"
# 	end
# 	def move(name, destination)
# 		puts "#{name} flies to the #{destination}."
# 	end
# end

# class Dog

# 	def make_up_name
# 		@name = "Sandy" # Store a value in an instance variable
# 	end

# 	def talk
# 		puts "#{@name} says Bark!"
# 	end

# 	def move(destination)
# 		puts "#{@name} runs to the #{destination}."
# 	end

# 	def make_up_age
# 		@age = 5
# 	end

# 	def report_age
# 		puts "#{@name} is #{@age} years old."
# 	end
# end

# class Dog
# 	#write a new value to @name
# 	def name=(new_value)
# 		@name = new_value
# 	end

# 	def name
# 		@name #Read the value from @name
# 	end

# 	def age=(new_value)
# 		@age = new_value #write a new value to @age
# 	end

# 	def report_age
# 		puts "#{@name} is #{@age} years old."
# 	end
# end

class Dog

	attr_accessor :name, :age

	def report_age
		puts "#{@name} is #{@age} years old."
	end

	def talk
		puts "#{@name} says Bark!"
	end

	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end

end

fido = Dog.new
fido.name = "Fido" #Set @name for Fido
fido.age = 2 #Set @age for Fido

rex = Dog.new
rex.name = "Rex" # Set @name for Rex
rex.age = 3 #Set @age for Rex
fido.report_age
rex.report_age

# dog = Dog.new
# dog.make_up_name
# dog.move("yard")
# dog.make_up_age
# dog.report_age


# class Cat
# 	def talk(name)
# 		puts "#{name} says Meow!"
# 	end
# 	def move(name, destination)
# 		puts "#{name} runs to the #{destination}."
# 	end
# end

# Create new instances of our classes
# dog = Dog.new
# dog_name = "Lucy"
# dog.talk(dog_name)
# dog.move(dog_name, "fence")

# cat = Cat.new
# cat_name = "Fluffy"
# cat.talk(cat_name)
# cat.move(cat_name, "litter box")


