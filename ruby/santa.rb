class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(gender, ethnicity)
		# puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
 
	# Getter methods for attributes
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	# Setter methods
	def celebrate_birthday
		@age +=1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name

	end
end

# Release 0 driver code
# santa= Santa.new
# santa.eat_milk_and_cookies("snickerdoodle")

# Release 1 driver code
# santas = []
# genders = ["female", "male", "bisexual", "asexual"]
# ethnicities = ["Asian", "White", "Black", "European", "Other"]

# genders.length.times do |i|
# 	santas << Santa.new(genders[i], ethnicities[i])
# end

# puts "Testing each Santa instance"
# santas.each do |speaker|
#   speaker.speak
# end

# Release 2 driver code
puts "Santa is age #{santa.age} and #{santa.ethnicity}"
puts "New ranking is #{reindeer_ranking}""