class TileGroup
	attr_accessor :tiles

	def initialize()
		@tiles = Array.new
	end

	def append(tile)
		@tiles.push(tile)
	end

	def remove(tile)
		tileIndex = @tiles.index(tile)
		@tiles.delete_at(tileIndex)
	end

	def hand()
		tileString=""
		@tiles.each {|tile| tileString+= tile.to_s}
		return tileString
	end
	
	def getTiles()
		return @tiles
	end
end
