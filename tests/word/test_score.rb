require "minitest/autorun"
require_relative "../../word.rb"
class Word::TestScore < Minitest::Test

	def setup 
		@currentWord = Word.new
	end
	
	def test_empty_word_should_have_score_of_zero
		assert_equal 0, @currentWord.score
	end

	def test_score_a_one_tile_word
		@currentWord.append(:P)
		assert_equal 3, @currentWord.score
	end

	def test_score_a_word_with_multiple_different_tiles
		@currentWord.append(:P)
		@currentWord.append(:B)
		@currentWord.append(:A)
		@currentWord.append(:J)		
		assert_equal 15, @currentWord.score
	end

	def test_score_a_word_with_recurring_tiles
		@currentWord.append(:P)
		@currentWord.append(:P)
		@currentWord.append(:P)
		assert_equal 9, @currentWord.score
	end
end
