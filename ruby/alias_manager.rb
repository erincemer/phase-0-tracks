def faker(name)
vowels = ["a", "e", "i", "o", "u"]
consonants= ["b", "c", "d", "f", "g", "h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
new_name = name.split(" ").rotate
swapped_name = new_name.join(" ")
letters = swapped_name.downcase.split("")

	letters.map! do |letter|
		if letter == " "
			letter = " "
		elsif letter == "z"
			letter = "b"
		elsif letter == "u"
			letter = "a"
		elsif vowels.include?(letter)
			letter = vowels[vowels.index(letter) +1]
		else
			letter = consonants[consonants.index(letter) +1]
		end
	end
	arr = letters.join("").split(" ")
	arr.map! {|word| word.capitalize}
	p arr.join(" ")
	
end

#faker("felicia torres")

puts "Please type a name so we can create a fake name"
name = gets.chomp
hash = {}
loop do
	if name == "quit"
		break
	else
	hash[faker(name)] = name
	end
	puts "More names?"
	name = gets.chomp
end

hash.each {|fake, real| puts fake + " is actually " + real + "."}
