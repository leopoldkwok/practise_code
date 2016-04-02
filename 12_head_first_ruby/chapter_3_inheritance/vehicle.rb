class Vehicle

	# All attributes will be inherited when we declare a subclass
	attr_accessor :odometer
	attr_accessor :gas_used

	#So will all instance methods

	def accelerate
		puts "Floor it!"
	end

	def sound_horn
		puts "Beep! Beep!"
	end

	def steer
		puts "Turn front 2 wheels."
	end

	def mileage
		return @odometer / @gas_used
	end

end


class Car < Vehicle
end

class Truck < Vehicle

	attr_accessor :cargo

	def load_bed(contents)
		puts "Securing #{contents} in the truck bed."
		@cargo = contents
	end
end

class Motorcycle < Vehicle
	def steer
		puts "Turn front wheel."
	end
end

# truck = Truck.new
# truck.load_bed("259 bouncy balls")
# puts "The truck is carrying #{truck.cargo}."
# truck.accelerate
# truck.steer

motorcycle = Motorcycle.new
motorcycle.steer


# car = Car.new
# car.odometer = 11432
# car.gas_used = 366

# puts "Lifetime MPG: "
# puts car.mileage








# class Car

# 	attr_accessor :odometer
# 	attr_accessor :gas_used

# 	def mileage
# 		@odometer  /@gas_used
# 	end

# 	def accelerate
# 		puts "Floor it!"
# 	end

# 	def soundhorn
# 		puts "Beep! Beep!"
# 	end

# 	def steer
# 		puts "Turn front 2 wheels."
# 	end
# end


# class Truck

# 	attr_accessor :odometer
# 	attr_accessor :gas_used

# 	def mileage
# 		@odometer  /@gas_used
# 	end

# 	def accelerate
# 		puts "Floor it!"
# 	end

# 	def soundhorn
# 		puts "Beep! Beep!"
# 	end

# 	def steer
# 		puts "Turn front 2 wheels."
# 	end
# end

# class Motorcycle

# 	attr_accessor :odometer
# 	attr_accessor :gas_used

# 	def mileage
# 		@odometer  /@gas_used
# 	end

# 	def accelerate
# 		puts "Floor it!"
# 	end

# 	def soundhorn
# 		puts "Beep! Beep!"
# 	end

# 	def steer
# 		puts "Turn front 2 wheels."
# 	end
# end


