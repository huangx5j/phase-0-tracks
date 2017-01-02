# Write a simple module
# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " :D"
#   end

# end

# puts Shout.yell_angrily("I hate deubgging!")
# puts Shout.yell_happily("I fixed the bug!")

# Convert a Standalone Module to a Mixin

module Shout
  def yell_angrily(words)
  	words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!!!" + " :D"
  end
end

class Dog
	include Shout
end

class Cat
	include Shout
end

dog = Dog.new
puts dog.yell_angrily("Bark!")
puts dog.yelling_happily("Woof!")

cat = Cat.new
puts cat.yell_angrily("Hiss!")
puts cat.yelling_happily("Purr!")