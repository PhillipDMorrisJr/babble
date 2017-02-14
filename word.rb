require_relative "/tile_group.rb"
require_relative "/tile_bag.rb"
class Word < TileGroup
attr_accessor :letters

	def initialize()
	@letters = Array.new
	end
	
	def score()
		currentScore = 0
		@letters.each { |letter| currentScore += currentTileBag.points_for(letter)}
		return currentScore
	end
end
