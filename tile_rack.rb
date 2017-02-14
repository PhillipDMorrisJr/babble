require_relative "tile_group"
require_relative "word.rb"
class TileRack < TileGroup
	Number_Of_Tiles_Needed_On_Rack = 7

	def initialize()
		super
	end

	def number_of_tiles_needed
		Number_Of_Tiles_Needed_On_Rack-tiles.length
	end

	def has_tiles_for?(text)
		text.downcase.each_char do|character|
			if (hand.downcase.count(character) >= text.downcase.count(character))
				return true
			else 
				return false
			end
		end
	end
	
	def remove_word(text)
		word = ""
		if (!has_tiles_for?(text))
			return	
		end
		text.each_char do|character|
			if (hand.include? character)
				word.concat(character)
				remove(character.to_sym)
			end
		end
		return word
	end
	
end
