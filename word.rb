require_relative "tile_group.rb"
require_relative "tile_bag.rb"
class Word < TileGroup

	def initialize()
		super
	end
	
	def score()
		currentScore = 0
		tiles.each { |letter| currentScore += TileBag.points_for(letter)}
		return currentScore
	end
end
