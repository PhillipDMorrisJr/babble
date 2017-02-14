# Represents a "bag" of tiles, from which random tiles may be drawn
# Tiles are represented as symbols (:A, :B, :C, ... :X, :Y, :Z, etc)
class TileBag

	@points = {
		:E => 1,
		:A => 1,
		:I => 1,
		:O => 1,
		:N => 1,
		:R => 1,
		:T => 1,
		:L => 1,
		:S => 1,
		:U => 1,
		:D => 2,
		:G => 2,
		:B => 3,
		:C => 3,
		:M => 3,
		:P => 3,
		:F => 4,
		:H => 4,
		:V => 4,
		:W => 4,
		:Y => 4,
		:K => 5,
		:J => 8,
		:X => 8,
		:Q => 10,
		:Z => 10
	}

	# Creates a new TileBag and populates it with a full set of tiles
	def initialize
		@tiles = []
		make_tiles(:E, 12)
		
		[:A, :I].each { |ltr| make_tiles(ltr, 9) }
		
		make_tiles(:O, 8)

		[:N, :R, :T].each { |ltr| make_tiles(ltr, 6) }
		[:L, :S, :U].each { |ltr| make_tiles(ltr, 4) }
		
		make_tiles(:D, 4)
		make_tiles(:G, 3)
		
		[:B, :C].each { |ltr| make_tiles(ltr, 2) }
		[:M, :P].each { |ltr| make_tiles(ltr, 2) }
		[:F, :H, :V, :W, :Y].each { |ltr| make_tiles(ltr, 2) }
		
		make_tiles(:K, 1)
		
		[:J, :X].each { |ltr| make_tiles(ltr, 1) }
		[:Q, :Z].each { |ltr| make_tiles(ltr, 1) }
		
		@tiles.shuffle!
	end
	
	# static method that returns the points associated with a tile
	# the tile is represented by a symbol (:A, :B, :C, etc.)
	def self.points_for(tile)
		@points[tile]
	end
	
	# draws and returns a random tile from the bag
	def draw_tile
		@tiles.pop
	end
	
	# returns true if the bag is empty; false otherwise
	def empty?
		@tiles.empty?
	end
	
	private 
	
	def make_tiles(ltr, freq)
		freq.times { @tiles << ltr }
	end
end
