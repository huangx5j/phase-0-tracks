form = { }

puts "What is your name?"
form["name"] = gets.chomp

puts "","How many children do you have"
form["children"] = gets.chomp.to_i

puts "","How old are you?"
form["age"] = gets.chomp.to_i

puts "","Do you have a dog? (yes/no)"
while input = gets.chomp.downcase;
	case input 
		when "yes"
			form["dog"] = true
			break;
		when "no"
			form["dog"] = false
			break;
		else
			puts "Error, please enter 'yes' or 'no'."
	end
end

puts "","Are you married? (yes/no)"
while input = gets.chomp.downcase;
	case input 
		when "yes"
			form["status"] = true
			break;
		when "no"
			form["status"] = false
			break;
		else
			puts "Whoops, please enter 'yes' or 'no'."
	end
end

puts "","Use one word to describe your design style?"
form["style"] = gets.chomp

puts "","Here are you answers:"

for i in 0...form.length
  puts "- #{form.keys[i]}: #{form.values[i]}"
end


puts "","Is there an answer you would like to revise? (yes/no)"
answer1 = nil;
answer2 = nil;

while answer1 = gets.chomp.downcase;
	case answer1 
		when "yes"
			puts "","What portion of the form would you like to revise? Select 'none' to exit."
			while answer2 = gets.chomp.downcase;
				if form.key?(answer2) then
					puts "","What is your new answer regarding #{answer2}?"
					form[answer2] = gets.chomp;
					break;
				elsif answer2 == "none" then
					puts "Thank you for answering"
					  break;
				else
					puts "This is not on the form."
				end
			end
			break;
		when "no"
			puts "","Thank you for answering the questions."
			break;
		when "none"
			puts "","No change. We hope to see you again"
			break;
		else
			puts "Error, please type 'yes' or 'no'. Type 'none' to exit."
	end
end

puts "","Your answers below:"
for i in 0...form.length
  puts "- #{form.keys[i]}: #{form.values[i]}"
end