require 'minitest/autorun' # Load Mini Test.
require 'person' # Load the class we're testing

class TestPerson < Minitest::Test # Define a test class
	def test_introduction # Define a test method
		person = Person.new # set up a person named Bob
		person.name = 'Bob'
		assert(person.introduction == 'Hello, my name is Bob!')
	end
end