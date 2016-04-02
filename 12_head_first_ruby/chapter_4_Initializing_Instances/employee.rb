class Employee

	# We need to create attribute writer methods manually, so we can validate the data.
	# We can create reader methods automatically, though
	attr_reader :name # The "name" attribute is inherited by both SalariedEmployee and Hourly Employee

	def name=(name)
		if name == ""
			raise "Name can't be blank!" # Report an error if the name is blank
		end
		@name = name # Store the name in an instance variable
	end

	# The "initialize" methods of both SalariedEmployee and HourlyEmployee will call this method via "super"
	def initialize(name = "Anonymous") # new initialize method that handles only the name!
		self.name = name
	end

	def print_name # The "print_pay_stub" methods of both SalariedEmployee and HourlyEmployee will call this method
		puts "Name: #{name}" # remember, this is the same as a call to self.name
	end
end

class SalariedEmployee < Employee

	attr_reader :salary # This attribute is specific to salaried employees

	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} isn't valid" # Report an error if the salary is negative
		end
		@salary = salary # Store the salary in an instance variable.
	end

	def initialize(name = "Anonymous", salary = 0.0) # Called when we call "SalariedEmployee.new"
		super(name) # Attempt to call "initialize" in Employee to set up the name. Call "initialize" in Employee passing only the name
		self.salary = salary
	end

	def print_pay_stub
		print_name # Calls print_name method inherited from superclass
		pay_for_period = (salary / 365.0) * 14 # Calculate a 14 - day portion of the employee's salary. Now, whether or not @salary is a Float, we'll get a Float result
		formatted_pay = format("%.2f", pay_for_period) # Get a string with the pay amount rounded to two decimal places
		puts "Pay This Period: $#{formatted_pay}" # Print the amount paid
	end



end

class HourlyEmployee < Employee

	def self.security_guard(name) # Accept the employee name as a parameter
		# Use the given name to construct an employee
		# Use predefined hourly_wage and hours_per_week for each employee type
		HourlyEmployee.new(name, 19.25, 30)
	end

	def self.cashier(name)
		HourlyEmployee.new(name, 12.75, 25)
	end

	def self.janitor(name)
		HourlyEmployee.new(name, 10.50, 20)
	end

	attr_reader :hourly_wage, :hours_per_week

	def hourly_wage=(hourly_wage)
		if hourly_wage < 0
			raise "An hourly way of #{hour} isn't valid"
		end
		@hourly_wage = hourly_wage

	end

	def hours_per_week=(hours_per_week)
		if hours_per_week < 0
			raise "#{hours_per_week} hours per week isn't valid!"
		end
		@hours_per_week = hours_per_week
	end

	def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
		super(name) # Call "initialize" in Employee, passing only the name
		self.hourly_wage = hourly_wage # Set these ourselves, since they are specific to the class
		self.hours_per_week = hours_per_week # Set these ourselves, since they are specific to the class
	end


	def print_pay_stub
		print_name # Calls print_name method inherited from superclass
		pay_for_period = hourly_wage * hours_per_week * 2 # Calculate two weeks' pay
		formatted_pay = format("%.2f", pay_for_period) # Get a string with the pay amount rounded to two decimal places
		puts "Pay This Period: $#{formatted_pay}" # Print the amount paid
	end

end

angela = HourlyEmployee.security_guard("Angela Matthews")
edwin = HourlyEmployee.janitor("Edwin Burgess")
ivan = HourlyEmployee.cashier("Ivan Stokes")

angela.print_pay_stub
edwin.print_pay_stub
ivan.print_pay_stub

	# def initialize(name = "Anonymous", salary = 0.0) # Specify default parameter values
	# 	self.name = name #use the "name" parameter to set the "@name" instance variable
	# 	self.salary = salary #use the "salary" parameter to set the "@salary" instance variable
	# end



	# def print_pay_stub
	# 	p @name, @salary
	# end

# salaried_employee = SalariedEmployee.new("Jane Doe", 50000)
# salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new("John Smith", 14.97, 30)
hourly_employee.print_pay_stub

# hourly_employee = HourlyEmployee.new
# hourly_employee.name = "John Smith"
# hourly_employee.hourly_wage = 14.97
# hourly_employee.hours_per_week = 30
# hourly_employee.print_pay_stub

# salaried_employee = SalariedEmployee.new
# salaried_employee.name = "Jane Doe"
# salaried_employee.salary = 50000
# salaried_employee.print_pay_stub

# Employee.new("Amy Blake", 50000).print_pay_stub

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