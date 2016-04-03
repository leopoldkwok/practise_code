require 'minitest/autorun' # Load MiniTest
require 'list_with_commas' # LOad the class we're testing

class TestListWithCommas < Minitest::Test

	def setup
		@list = ListWithCommas.new
	end

	def test_it_prints_one_word_alone

		@list.items = ['apple']
		assert_equal('apple', @list.join)

	end

	def test_it_joins_two_words_with_and # First test method

		@list.items = ['apple', 'orange'] # Test "join" using two items
		assert_equal('apple and orange', @list.join) # The test will pass IF "join" returns the expected string

	end

	def test_it_joins_three_words_with_commas

		@list.items = ['apple','orange','pear'] # Test "join" using three items
		assert_equal('apple, orange, and pear',@list.join) # The test will pass IF "join" returns the expected string

	end
end













# class TestSomething < Minitest::Test # Create a subclass of Minitest:Test

# 	def test_true_assertion # First test method
# 		assert(true) # This test will pass
# 	end

# 	def test_false_assertion # Second test method
# 		assert(false) # This test will fail
# 	end

# end