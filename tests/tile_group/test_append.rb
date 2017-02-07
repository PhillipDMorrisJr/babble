require "minitest/autorun"
require_relative "../../tile_group.rb"
class TileGroup::TestAppend < Minitest::Test

	def setup 
		@tiles = TileGroup.new
	end

	def test_append_one_tile
		@tiles.append(:A)
		assert_equal 1, @tiles.getTiles.length

	end

	def test_append_many_tilesruby 
		@tiles.append(:A)
		@tiles.append(:C)
		@tiles.append(:B)
		assert_equal 3, @tiles.getTiles.length
	end
	
	def test_append_duplicate_tiles
		@tiles.append(:A)
		@tiles.append(:A)
		assert_equal 2, @tiles.getTiles.length
	end
end
