require "minitest/autorun"
require_relative "../../tile_group.rb"
class TileGroup::TestInitialize < Minitest::Test
	def setup 
		@tilegroup = TileGroup.new
	end 
	
	def test_create_empty_tile_group
		assert_equal 0, @tilegroup.getTiles.length
	end
end
