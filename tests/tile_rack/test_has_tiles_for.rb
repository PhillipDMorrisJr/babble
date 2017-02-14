require_relative "../../tile_rack.rb"
require 'minitest/autorun'
class TileRack::TestNumberOfTilesNeeded < MiniTest::Test

	def setup
		@rack = TileRack.new
	end

	def test_rack_has_needed_letters_when_letters_are_in_order_no_duplicates
		@rack.append(:A)
		@rack.append(:R)
		@rack.append(:E)
		assert_equal true, @rack.has_tiles_for?("ARE")
	end

	def test_rack_has_needed_letters_when_letters_are_not_in_order_no_duplicates
		@rack.append(:R)		
		@rack.append(:A)
		@rack.append(:E)
		assert_equal true, @rack.has_tiles_for?("ARE")
	end

	def test_rack_doesnt_contain_any_needed_letters
		@rack.append(:R)		
		@rack.append(:E)
		assert_equal false, @rack.has_tiles_for?("ARE")
	end

	def test_rack_contains_some_but_not_all_needed_letters
		@rack.append(:R)		
		@rack.append(:A)
		@rack.append(:E)
		assert_equal false, @rack.has_tiles_for?("FAREWELL")
	end

	def test_rack_contains_a_word_with_duplicate_letters
		@rack.append(:R)		
		@rack.append(:R)
		@rack.append(:A)
		@rack.append(:E)
		assert_equal true, @rack.has_tiles_for?("RARE")
	end

	def test_rack_doesnt_contain_enough_duplicate_letters
		@rack.append(:R)
		@rack.append(:A)
		@rack.append(:E)
		assert_equal false, @rack.has_tiles_for?("RARE")
	end

end
