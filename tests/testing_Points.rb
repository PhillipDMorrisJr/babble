require minitest/autorun
require_relative '../tile_bag.rb'
class TestPointsFor < Minitest::Test

	def setup
		@onePointValues = [:A, :E, :I, :O, :L, :N, :R, :T,  :S, :U]
		@twoPointValues = [:D, :G]
		@threePointValues = [:B, :C, :M, :P]
		@fourPointValues = [:F, :H, :V, :W, :Y]
		@eightPointValues = [:J, :X]
		@tenPointValues = [:Q, :Z]
		@tile_bag = = TileBag.new
	end
	
	def test_points
		@onePointValues.each do|i|  assert_Equal 1 TileBag.points_for(i)
		end
		@twoPointValues.each do|i|  assert_Equal 2 TileBag.points_for(i)
		end
		@threePointValues.each do|i|  assert_Equal 3 TileBag.points_for(i)
		end		
		@fourPointValues.each do|i|  assert_Equal 4 TileBag.points_for(i)
		end	
		@eightPointValues.each do|i|  assert_Equal 8 TileBag.points_for(i)
		end
		@tenPointValues.each do|i|  assert_Equal 10 TileBag.points_for(i)
		end
	end
end

