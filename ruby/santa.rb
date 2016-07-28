class Santa
   attr_reader :age, :ethnicity
   attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
  end

  def speak
    "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    "That was a good #{cookie}."
  end

  def celebrate_birthday
  	@age += 1
  end

  def get_mad_at(reindeer)
  	@reindeer_ranking.push(@reindeer_ranking.delete(reindeer))
  	p @reindeer_ranking
  end

end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#santa = Santa.new("male", "black")
#santa.speak
#santa.eat_milk_and_cookies("muffin")
#santa.get_mad_at("Vixen")
#santa.celebrate_birthday
#santa.celebrate_birthday
#
#p santa.age
#p santa.ethnicity
#p santa.gender
#santa.gender = "female"
#p santa.gender


10.times do |santa|

	santa = Santa.new((example_genders).sample, (example_ethnicities).sample)

	p santa

end
