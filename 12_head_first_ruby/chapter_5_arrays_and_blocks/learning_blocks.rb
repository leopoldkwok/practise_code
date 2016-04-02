# Ruby block

# def my_method(&my_block) # This method takes a block as a parameter
# 	puts "We're in the method, about to invoke your block!"
# 	my_block.call # The "call" method calls the block
# 	puts "We're back in the method!"
# end


# my_method do
# 	puts "We're in the block! Its a block party" # The block. It will be stored in the "my_block" parameter
# end

def twice(&my_block)
	puts "In the method, about to call the block!"
	my_block.call # call the block
	puts "Back in the method, about to call the block again!"
	my_block.call # Call the block AGAIN
	puts "Back in the method, about to return!"
end

twice do
	puts "Wooo!"
end