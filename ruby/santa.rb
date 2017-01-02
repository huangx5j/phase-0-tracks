class Santa

	def speak
		puts "#{@gender} Ho, ho, ho! Haaaappy holidays!"
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


end

# driver code

# santa= Santa.new
# santa.eat_milk_and_cookies("snickerdoodle")

santas = []
genders = ["female", "male", "bisexual", "asexual"]
ethnicities = ["Asian", "White", "Black", "European", "Other"]

genders.length.times do |i|
	santas << Santa.new(genders[i], ethnicities[i])
end

puts "Testing each Santa instance"
santas.each do |speaker|
  speaker.speak
end
