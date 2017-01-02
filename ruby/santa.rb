class Santa
	attr_reader :ethinicity, :gender
	attr_accessor :age, :cookies

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "#{@name} said that was a good #{cookie}!"
	end

	def initialize(gender, ethnicity, cookies)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
		@cookies = cookies
	end
 
	# Setter methods
	def celebrate_birthday
		@age +=1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name

	end

	def about
		puts "This is a #{@age} year old #{gender} #{@ethnicity} Santa that loves #{cookies} cookies."
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
# puts "Santa is age #{santa.age} and #{santa.ethnicity}"
# puts "New ranking is #{reindeer_ranking}"

# Release 3 driver code
# puts "Santa is age #{santa.age} and #{santa.ethnicity}"

# Release 4 driver code
santas = [ ]
# Using shuffle to randomize an array instead of .sample
genders = ["female", "male", "bisexual", "asexual"].shuffle
ethnicities = ["Asian", "White", "Black", "European", "Other"].shuffle
cookies = ["butterscotch", "almond", "nutty", "mint", "regular"].shuffle

cookies.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i], cookies[i])
end

santas.each do |list|
	list.about
end
