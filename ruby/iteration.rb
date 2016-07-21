def vacation
	puts "Hard to choose."
	yield("Sydney", "Rome")
end


vacation { |city1, city2| puts "But I would like to go to #{city1} and #{city2}!"}
