require "minitest/autorun"
require_relative "../../word.rb"
class Word::TestInitialize < Minitest::Test

	def test_create_empty_word
		currentWord = Word.new
		assert_equal "", currentWord
	end
end
