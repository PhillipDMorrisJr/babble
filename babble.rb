require_relative "tile_rack.rb"
require_relative "tile_bag.rb"
require_relative "word.rb"
require 'spellchecker'
require 'tempfile'
class Babble
RACK_CAP = 7
	def initialize()
		@tileBag = TileBag.new
		@tileRack = TileRack.new	
		@word = Word.new
	end

	def run()
		word = ""
		until word == ":quit"
			RACK_CAP.times
				if RACK_CAP < @tileRack.tiles.count
					@tileRack.append(@tileBag.draw_tile)
				end
			end
			puts @tileRack.hand
			puts "Guess A Word!"
			word = gets.chomp
			if Spellchecker::check(word)[0][:correct] && @tileRack.has_tiles_for?(word)
				@word.tiles = @tileRack.remove_word(word)
				puts "You made " + @word.hand + " for " + @word.score + " points"
			end
		end
	end

Babble.new.run
