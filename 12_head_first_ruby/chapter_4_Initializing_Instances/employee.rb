class Employee

	# We need to create attribute writer methods manually, so we can validate the data.
	# We can create reader methods automatically, though
	attr_reader :name, :salary

	def name=(name)
		if name == ""
			raise "Name can't be blank!" # Report an error if the name is blank
		end
		@name = name # Store the name in an instance variable
	end

	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} isn't valid" # Report an error if the salary is negative
		end
		@salary = salary # Store the salary in an instance variable.
	end

	def initialize(name = "Anonymous", salary = 0.0) # Specify default parameter values
		self.name = name #use the "name" parameter to set the "@name" instance variable
		self.salary = salary #use the "salary" parameter to set the "@salary" instance variable
	end

	def print_pay_stub
		puts "Name: #{self.name}" # Print the employee name
		pay_for_period = (self.salary / 365.0) * 14 # Calculate a 14 - day portion of the employee's salary. Now, whether or not @salary is a Float, we'll get a Float result
		formatted_pay = format("%.2f", pay_for_period) # Get a string with the pay amount rounded to two decimal places
		puts "Pay This Period: $#{formatted_pay}" # Print the amount paid
	end

	# def print_pay_stub
	# 	p @name, @salary
	# end


end

Employee.new("Amy Blake", 50000).print_pay_stub

# employee = Employee.new("LEO", 50000)
# employee.print_pay_stub

# amy = Employee.new("Amy Blake", 50000)
# amy.print_pay_stub

# Employee.new("Jane Doe", 50000).print_pay_stub
# Employee.new("Jane Doe").print_pay_stub
# Employee.new.print_pay_stub
# employee = Employee.new("Amy Blake", 50000)


# employee.name = "Jane Doe"
# employee.salary = 50000
# employee.print_pay_stub

# amy = Employee.new
# amy.name = "Amy Blake"
# amy.salary = 50000

# amy.print_pay_stub
# kara = Employee.new
# kara.name = ""

# ben = Employee.new
# ben.salary = -246