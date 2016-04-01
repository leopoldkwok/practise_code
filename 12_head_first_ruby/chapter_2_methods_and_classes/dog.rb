class Dog
	def talk
		puts "Bark!"
	end

	def move(destination)
		puts "Running to the #{destination}."
	end
end

def talk(animal_type, name)
	if animal_type == "bird"
		puts "#{name} says Chirp! Chirp!"
	elsif animal_type == "dog"
		puts "#{name} says Bark!"
	elsif animal_type == "cat"
		puts "#{name} says Meow!"
	end
end