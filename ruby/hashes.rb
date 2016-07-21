#create an empty hash to store the answers you will get from user as you ask
client={}
#ask user questions to collect customer data, use gets.chomp to store the answer into empty hash
puts "What is the client's name?"
client[:name] = gets.chomp

puts "What is the client's age?"
client[:age] = gets.chomp

puts "How many children does the client have?"
client[:number_of_children] = gets.chomp

puts "What decor theme does client desire?"
client[:decor_theme] = gets.chomp

p client
