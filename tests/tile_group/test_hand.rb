require "minitest/autorun"
require_relative "../../tile_group.rb"
class TileGroup::TestHand < Minitest::Test
	def setup 
		@tiles = TileGroup.new
	end

	def test_convert_empty_group_to_string

		assert_equal "", @tiles.hand
	end

	def test_convert_single_tile_group_to_string
		@tiles.append(:Z)
		assert_equal "Z", @tiles.hand
	
	end

	def test_convert_multi_tile_group_to_string
		@tiles.append(:P)
		@tiles.append(:D)
		@tiles.append(:M)
		@tiles.append(:J)
		assert_equal "PDMJ", @tiles.hand
	end

	def test_convert_multi_tile_group_with_duplicates_to_string
		@tiles.append(:P)
		@tiles.append(:H)
		@tiles.append(:I)
		@tiles.append(:L)
		@tiles.append(:L)
		assert_equal "PHILL", @tiles.hand
	
	end

end
