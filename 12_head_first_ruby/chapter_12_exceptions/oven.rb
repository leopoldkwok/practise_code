class OvenOffError < StandardError
end

class OvenEmptyError < StandardError
end

class SmallOven

	attr_accessor :contents

	def turn_on
		puts "Turning oven on."
		@state = "on"
	end
	def turn off
		puts "Turning oven off."
		@state = "off"
	end

	def bake
		unless @state == "on"
			raise OvenOffError, "You need to turn the oven first!" # Raise an error if we attempt to bake while the oven is off
		end
		if @contents == nil
			raise OvenEmptyError, "There's nothing in the oven!" # Raise an error if we attempt to bake while the oven is off
		end
		"golden-brown #{contents}" # This line won't be reached if an error is raised!
	end
end

dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_on

dinner.each do |item| # Process each menu item
	begin
		oven.contents = item # Place the item in the oven
		puts "Serving #{oven.bake}." # Bake and serve the item
	rescue OvenEmptyError => error # Store the exception in a variable
		puts "Error: #{error.message}" # Print whatever message the exception contains
	rescue OvenOffError => error
		oven.turn_on
		retry # restart the "begin" block after turning the oven on.
	end
end

# Page 387 - Ensuring the oven gets turned off
begin
  oven.turn_on
  oven.contents = nil
  puts "Serving #{oven.bake}."
rescue OvenEmptyError => error
  puts "Error: #{error.message}"
ensure
  oven.turn_off
end