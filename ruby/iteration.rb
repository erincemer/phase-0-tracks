def vacation
  puts "Hard to choose where to go!"
  yield("San Francisco", "Chicago")
end
​
​
vacation { |city1, city2| puts "But I would like to go to either #{city1} or #{city2}." }
​
​
animals = ["elephant", "zebra", "lion", "hippo"]
​
hollywood = {
  :die_hard => "Bruce Willis",
  :indiana_jones => "Harrison Ford",
  :forrest_gump => "Tom Hanks",
  :iron_man => "Robert Downey Jr.",
  :philadelphia => "Tom Hanks"
}
​
puts "Before .each"
p animals
​
animals.each { |animal| puts animal }
​
puts "After .each"
p animals
​
​
puts "Before .map!"
p animals
​
animals.map! { |animal| animal.capitalize }
​
puts "After map!"
p animals
​
puts "Before .each"
p hollywood
​
hollywood.each { |movie, actor| puts "#{actor} was great in #{movie}!" }
​
puts "After .each"
p hollywood
​
​
# 1)
#animals.delete_if { |animal| animal.length < 5 }
#
#p animals
​
#hollywood.delete_if { |movie, actor| movie.length < 10 }
#
#p hollywood
​
# 2)
#p animals.select { |animal| animal[0] == "z" }
#
#p animals
​
#p hollywood.select { |movie, actor| actor == "Tom Hanks" }
​
# 3)
#p animals.keep_if { |animal| animal[0] == "z" }
#
#p animals
#
#p hollywood.keep_if { |movie, actor| actor == "Tom Hanks" }
#
#p hollywood
​
# 4)
#p animals.drop_while { |animal| animal.length > 5 }
​
#p hollywood.reject { |movie, actor| actor[0] == "B" }
