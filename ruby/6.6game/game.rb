#create a initialize method that has guess count and a word to pick a word
# when we initialize second time, this will be the second user guessing the word
#create a method to guess the word first user picked- to be used by the second user

class WordGame
	attr_reader :word
	attr_accessor :guess_count

	def initialize(word)
		@guess_count = 0
		@word = word
		@is_over = false
	end

	#def pick_word(word)
	#	@word = word
	#	@guess_count = word.length
	#end

	def guess(string)
		@guess_count += 1
		if string == @word
			puts "You guessed it right! Congrats!"
		else
			puts "No, that is not the one!"
		end
	end



end

game = WordGame.new("apple")
#game.guess("apple")

while game.guess_count < game.word.length
	puts "make a guess"
	input = gets.chomp
	game.guess(input)
end
