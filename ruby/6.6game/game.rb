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
		@secret = word.split("").each {|letter| print letter = "*"}
		@guesses = []
	end



	def guess(letter)
		@guess_count += 1
		@guesses << letter
		if @word.include? letter
			puts "You guessed it right!"
			if @guesses.count(letter) > 1
				@guess_count -= 1
			end

		else
			puts "No, that is not the one!"

			if @guesses.count(letter) > 1
				@guess_count -= 1
			end
		end


	end

end

game = WordGame.new("bok")



while game.guess_count < game.word.length

	puts "\nPlease make a guess."
	input = gets.chomp
	game.guess(input)

end
