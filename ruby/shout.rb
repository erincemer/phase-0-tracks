#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yelling_happily(n)
#    n.times {puts "That's what I'm talking about!"}
#  end
#end

#Shout.yell_angrily("No")
#Shout.yelling_happily(3)

module Shout
  def shout(words)
    puts "Lets go " + words + " !"
  end
end

class Fans
  include Shout
end

class Moms
  include Shout
end

fans = Fans.new
fans.shout("Warriors")

moms = Moms.new
moms.shout("my dear")
