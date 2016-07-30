#create a initialize method that has guess count and a word to pick a word
# when we initialize second time, this will be the second user guessing the word
#create a method to guess the word first user picked- to be used by the second user

class WordGame
	attr_reader :word
	attr_accessor :guess_count, :encoded_word

	def initialize(word)
		@guess_count = 0
		@word = word
		@is_over = false
		@secret = []
		@guesses = []

	end

	def encode
		@encoded_word = []
		@word.length.times {@encoded_word << "*"}
		p @encoded_word.join
	end

	def join_the_letters

	end

	def decode(letter)

		if @word.split("").count(letter) > 1
			@index = find_index(letter)
			@index.each do |ind|
				@encoded_word[ind]	= letter
				p @encoded_word.join
			end
		else
			@encoded_word[@word.index(letter)] = letter
			p @encoded_word.join
		end
	end

	def find_index(letter)
		i = -1
		all = []
		while i = @word.index(letter, i+1)
			all << i
		end
		all
	end

	def guess(letter)
		@guess_count += 1
		@guesses << letter

		if @word.include? letter
			puts "You guessed it right!"
			decode(letter)
			if @guesses.count(letter) > 1
				@guess_count -= 1
			end
		else
			puts "No, that is not the one!"
			p @encoded_word.join
			if @guesses.count(letter) > 1
				@guess_count -= 1
			end
		end
	end


end

game = WordGame.new("book")


puts "Welcome to the word game!"
game.encode
while game.guess_count < game.word.length * 2

	puts "Please make a letter guess to find the word."
	input = gets.chomp
	game.guess(input)
	if game.encoded_word.join == game.word
		puts"You found the word! Congrats!"
		break
	end
end
