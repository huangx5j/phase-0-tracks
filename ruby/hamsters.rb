#4.3 Pairing
#Joseph Huang
#Sarah Dudek

puts "What is the hamster's name?"
name=gets.chomp()

puts "What is the volume level?"
volume=gets.chomp().to_f

puts "What is the fur color?"
color=gets.chomp()

puts "Should you adopt? Y/N"
answer=gets.chomp()

puts "What is the estimate age?"
age=gets.chomp().to_i

puts "This is a summary of the hamster's data:"
puts "The hamster's name is #{name}, volume of #{volume}, #{color} fur, #{answer} for adoption, and age is #{age}."