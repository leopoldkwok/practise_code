# Get My Number Game
# Written by: you!

puts "Welcome to 'Get My Number!'"

#Get the player's name, and greet them.
print "What's your name? "

input = gets

# puts input.inspect is the same as p input

name = input.chomp

puts "Welcome, #{name}!"

#Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

#Track how many guesses the player has made.
num_guesses = 0

# Track whether the player has guesses correctly.
guessed_it = false

# while num_guesses < 10 && guessed_it == false

until num_guesses == 10 || guessed_it

	puts "You've got #{10 - num_guesses} guesses left."
	print "Make a guess: "
	guess = gets.to_i

	num_guesses += 1 #we need to add 1 to the guess count each loop, so we don't loop forever.

	# Compare the guess to the target.
	# Print the appropriate message.
	if guess < target
		puts "Opps. Your guess was LOW."
	elsif guess > target
		puts "Oops. Your guess was HIGH."
	elsif guess == target
		puts "Good job, #{name}!"
		puts "You guessed my number in #{num_guesses} guesses!"
		guessed_it = true
	end
end

# If the player didn't guess in timer, show the target number.
unless guessed_it
	puts "Sorry. You didn't get my number. (It was #{target}.)"
end

