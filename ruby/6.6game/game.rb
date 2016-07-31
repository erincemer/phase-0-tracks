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
		@encoded_word = []
	end
#create method that prints *s according to the word's length
	def encode
		@word.length.times {@encoded_word << "*"}
		join_the_letters
	end
#create a method to print a string of encoded letters
	def join_the_letters
		  @encoded_word.join
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
		p join_the_letters
	end
#create a method that returns an array of indexes of given letter
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
			puts "No, the word doesn't have the letter #{letter}!"
			p join_the_letters
			if @guesses.count(letter) > 1
				@guess_count -= 1
			end
		end
		puts "You have #{@word.length * 2 - @guess_count} chances left."
		if @word.length * 2 - @guess_count == 0
			puts"GAME OVER!"
		end
		join_the_letters
	end
end

game = WordGame.new("book")

puts "Welcome to the word game! Below is your word, of course, encoded. You can see how long it is though!"

#invoke the encode method so user will know how long the word is.

p game.encode

#
##create a loop that keep telling the user to guess a letter UNTIL decided chances of guesses #reached. IF a word is found before all the chances are used, BREAK.

while game.guess_count < game.word.length * 2
	puts "-------------------"
	puts "Please make a letter guess to decode. ONE letter at a time!"
	letter = gets.chomp
	game.guess(letter)
	if game.encoded_word.join == game.word
		puts "YOU FOUND THE WORD! CONGRATS!"
		break
	end
end
