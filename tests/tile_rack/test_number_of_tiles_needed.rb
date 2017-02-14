require_relative "../../tile_rack.rb"
require_relative "../../tile_group.rb"
require 'minitest/autorun'
class TileRack::TestNumberOfTilesNeeded < MiniTest::Test

	def setup
		@rack = TileRack.new
	end

	def test_empty_tile_rack_should_need_max_tiles
		assert_equal 7, @rack.number_of_tiles_needed
	end

	def test_tile_rack_with_one_tile_should_need_max_minus_one_tiles
		@rack.append(:A)
		assert_equal 6, @rack.number_of_tiles_needed
	end

	def test_tile_rack_with_several_tiles_should_need_some_tiles
		@rack.append(:A)
		@rack.append(:C)
		@rack.append(:D)
		@rack.append(:Q)
		assert_equal 3, @rack.number_of_tiles_needed
	end

	def test_that_full_tile_rack_doesnt_need_any_tiles
		@rack.append(:C)
		@rack.append(:D)
		@rack.append(:Q)
		@rack.append(:A)
		@rack.append(:E)
		@rack.append(:G)
		@rack.append(:W)
		assert_equal 0, @rack.number_of_tiles_needed
	end
end

