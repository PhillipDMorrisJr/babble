require_relative "../../tile_rack.rb"
require_relative "../../tile_group.rb"
require 'minitest/autorun'
class TileRack::TestRemoveWord < MiniTest::Test


	def setup
		@rack = TileRack.new
	end

	def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
		@rack.append(:A)
		@rack.append(:R)		
		@rack.append(:E)
		assert_equal "ARE".downcase, @rack.remove_word("ARE").downcase
		assert_equal "", @rack.hand
	end

	def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
		@rack.append(:R)		
		@rack.append(:A)		
		@rack.append(:E)
		assert_equal "ARE".downcase, @rack.remove_word("ARE").downcase
		assert_equal "", @rack.hand
	end

	def test_can_remove_word_with_duplicate_letters
		@rack.append(:R)		
		@rack.append(:R)
		@rack.append(:A)
		@rack.append(:E)
		assert_equal "RARE".downcase, @rack.remove_word("RARE").downcase
		assert_equal "", @rack.hand
	end

	def test_can_remove_word_without_removing_unneeded_duplicate_letters
		@rack.append(:R)
		@rack.append(:R)		
		@rack.append(:R)
		@rack.append(:A)
		@rack.append(:E)
		assert_equal "RARE".downcase, @rack.remove_word("RARE").downcase
		assert_equal "R", @rack.hand
	end
end
