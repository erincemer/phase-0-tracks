module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(n)
    n.times {puts "That's what I'm talking about!"}
  end
end

#Shout.yell_angrily("No")
#Shout.yelling_happily(3)
