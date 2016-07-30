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
		@number_of_guesses = 0

	end

	def encode
		@encoded_word = []
		@word.length.times {@encoded_word << "*"}
		join_the_letters
	end

	def join_the_letters
		p @encoded_word.join
	end

#create method(s) to print the decoded version after EACH guess.

	def decode(letter)

		if @word.split("").count(letter) > 1
			@index = find_index(letter)
			@index.each do |ind|
				@encoded_word[ind] = letter
				join_the_letters
			end
		else
			@encoded_word[@word.index(letter)] = letter
			join_the_letters
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
# create a method that will check if the guessed letter is in the word and print messages accordingly.
#at the bottom of the method, print a message stating how many chances left to guess AFTER EACH guess.
	def guess(letter)
		@guess_count += 1
		@guesses << letter
		@number_of_guesses +=1
		if @word.include? letter
			puts "You found a letter!"
			decode(letter)
			if @guesses.count(letter) > 1
				@guess_count -= 1
			end
		else
			puts "No, that is not the one!"
			join_the_letters
			if @guesses.count(letter) > 1
				@guess_count -= 1
			end
		end
		puts "You have #{@word.length * 2 - @guess_count} chances left."
	end
end

game = WordGame.new("book")

puts "Welcome to the word game! Below is your word, ofcourse, encoded. You can see how long it is though!"

#invoke the encode method so user will know how long the word is.
game.encode

#create a loop that keep telling the user to guess a letter UNTIL decided chances of guesses reached. IF a word is found before all the chances are used, BREAK.

while game.guess_count < game.word.length * 2
	puts "Please make a letter guess to start to decode. ONE letter at a time!"
	letter = gets.chomp
	game.guess(letter)
	if game.encoded_word.join == game.word
		puts"You found the word! Congrats!"
		break
	end
end
