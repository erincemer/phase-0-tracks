#create an empty hash to store the answers you will get from user as you ask
client={}
#ask user questions to collect customer data, use gets.chomp to store the answer into empty hash
puts "What is the client's name?"
client[:name] = gets.chomp

puts "What is the client's age?"
client[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client[:number_of_children] = gets.chomp.to_i

puts "What decor theme does client desire?"
client[:decor_theme] = gets.chomp

p client

#create a loop that keep asks the user some questions and if user wants
#to make any changes to those answers until the user types "none"
#update the asnwers if there is any change
loop do


	puts "Any changes you would like to make?"
    answer = gets.chomp
	if answer == "none"
		puts client
		break
	elsif answer == "name"
		puts "What is the name supposed to be?"
		new_name = gets.chomp
		client[:name] = new_name

	elsif answer == "age"
		puts "What is the age supposed to be?"
		new_age = gets.chomp.to_i
		client[:age] = new_age

	elsif answer == "number_of_children"
		puts "What is the number of children supposed to be?"
		new_number_of_children = gets.chomp.to_i
		client[:number_of_children] = new_number_of_children

	elsif answer == "decor_theme"
		puts "What is decor theme supposed to be?"
		new_decor_theme = gets.chomp
		client[:decor_theme] = new_decor_theme

	else
		puts " Please type a valid answer."
	end

end

p client
