require "minitest/autorun"
require_relative "../../tile_group.rb"
class TileGroup::TestRemove < Minitest::Test
	def setup
		@tiles = TileGroup.new
	end 

	def test_remove_only_tile
		@tiles.append(:A) 
		@tiles.remove(:A)
		assert_equal 0, @tiles.getTiles.length	
	end

	def test_remove_first_tile_from_many
		@tiles.append(:A) 
		@tiles.append(:B) 
		@tiles.append(:C) 
		@tiles.append(:D) 
		@tiles.append(:E) 
		@tiles.remove(:B)
		assert_equal 4, @tiles.getTiles.length
	end

	def test_remove_last_tile_from_many
		@tiles.append(:A) 
		@tiles.append(:B) 
		@tiles.append(:C) 
		@tiles.append(:D) 
		@tiles.append(:E)
		@tiles.remove(:E)
		assert_equal 4, @tiles.getTiles.length
	end

	def test_remove_middle_tile_from_many
		@tiles.append(:A) 
		@tiles.append(:B) 
		@tiles.append(:C) 
		@tiles.append(:D) 
		@tiles.append(:E) 
		@tiles.remove(:C)
		assert_equal 4, @tiles.getTiles.length
	end

	def test_remove_multiple_tiles
		@tiles.append(:A) 
		@tiles.append(:B) 
		@tiles.append(:C) 
		@tiles.append(:D) 
		@tiles.append(:E) 
		@tiles.remove(:C)
		@tiles.remove(:E)
		assert_equal 3, @tiles.getTiles.length
	end

	def test_make_sure_duplicates_are_not_removed
		@tiles.append(:A) 
		@tiles.append(:B) 
		@tiles.append(:C) 
		@tiles.append(:D) 
		@tiles.append(:D) 
		@tiles.append(:E)
		@tiles.remove(:D)
		assert_equal 5, @tiles.getTiles.length
	end
end
