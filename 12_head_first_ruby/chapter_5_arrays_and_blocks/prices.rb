# refactoring

def total(prices)
	amount = 0 # The total starts at 0
	prices.each do |price| # process each price.
		amount += price # Add the current price to the total
	end
	amount # Return the final total
end

def refund(prices)
	amount = 0 # The total starts at 0
	prices.each do |price| # Process each price
		amount -= price # Refund the current price
	end
	amount # return the total refund
end

def show_discounts(prices)
	prices.each do |price| # Process each price
		amount_off = price / 3.0 # Determine discount for the current price
		puts format("Your discount: $%.2f", amount_off) # Format the discount
	end
end

prices = [3.99, 25.00, 8.99] # Create an array holding prices from our order

puts format("%.2f", total(prices)) # pass our array of prices to the method and format the result
puts format("%.2f", refund(prices)) # pass our array of prices to the method and format the result

show_discounts(prices) # Pass our array of prices to the method



# def total(prices)
# 	amount = 0 # The total starts at 0
# 	index = 0 # Start at the first array index
# 	while index < prices.length # while we're still within the array..
# 		amount += prices[index] # Add the current price to the total
# 		index += 1 # move to the next price
# 	end
# 	amount # Return the total
# end

# def refund(prices)
# 	amount = 0 # The total starts at 0
# 	index = 0 # Start at the first array index
# 	while index < prices.length # while we're still within the array
# 		amount -= prices[index] # subtract the current price
# 		index += 1 # move to the next price
# 	end
# 	amount # return the total refund
# end

# def show_discounts(prices)
# 	index = 0 # Start at the first array index
# 	while index < prices.length # while we're still within the array
# 		amount_off = prices[index] / 3.0 # Determine discount for the current price
# 		puts format("Your discount: $%.2f", amount_off) # Format the discount
# 		index += 1 # move to the next price
# 	end
# end

# prices = [3.99, 25.00, 8.99] # Create an array holding prices from our order

# puts format("%.2f", total(prices)) # pass our array of prices to the method and format the result
# puts format("%.2f", refund(prices)) # pass our array of prices to the method and format the result

# show_discounts(prices) # Pass our array of prices to the method