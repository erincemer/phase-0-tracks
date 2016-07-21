#create an empty hash to store the answers you will get from user as you ask
client={}
#ask user questions to collect customer data, use gets.chomp to store the answer into empty hash
puts "What is the client's name?"
client[:name] = gets.chomp
