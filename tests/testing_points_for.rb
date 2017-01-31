require minitest/autorun
require_relative '../tile.rb'
class TestPointsFor < Minitest::Test

	def setup
		@onePointValues = [:A, :E, :I, :O, :L, :N, :R, :T,  :S, :U]
		@twoPointValues = [:D, :G]
		@threePointValues = [:B, :C, :M, :P]
		@fourPointValues = [:F, :H, :V, :W, :Y]
		@eightPointValues = [:J, :X]
		@tenPointValues = [:Q, :Z]
	end
	
	def test_points
		@onePointValues.each do|i|  assert_Equal
