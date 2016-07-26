class Santa
   attr_reader :age, :ethnicity
   attr_accessor:gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}."
  end

  def celebrate_birthday
  	@age += 1
  end

  def get_mad_at(reindeer)
  	@reindeer_ranking.delete(reindeer)
  	@reindeer_ranking.push(reindeer)
  	p @reindeer_ranking
  end

end

#santa = Santa.new("male", "black")
#santa.speak
#santa.eat_milk_and_cookies("muffin")
##santa.get_mad_at("Vixen")
#santa.celebrate_birthday
#santa.celebrate_birthday
#
#p santa.age
#p santa.ethnicity
#p santa.gender
#santa.gender = "female"
#p santa.gender
