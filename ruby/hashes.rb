#Write a program that will allow an interior designer to enter the details of a given client
#Input: client's name, number of children, favorite color, martial status, and decor

#Create empty hash called form to store user inputs
form = { }

#Converting user input to the appropriate data type
#Adding user input to hash
puts "What is your name?"
form["name"] = gets.chomp

puts "How many children do you have"
form["children"] = gets.chomp.to_i

puts "How old are you?"
form["age"] = gets.chomp.to_i

puts "What is your favorite color?"
form["color"] = gets.chomp.to_s

puts "Are you married? (yes/no)"
while input = gets.chomp.downcase;
	case input 
		when "yes"
			form["status"] = true
			break;
		when "no"
			form["status"] = false
			break;
		else
			puts "Error, please enter 'yes' or 'no'."
	end
end

puts "Use one word to describe your design style?"
form["style"] = gets.chomp

puts "\r\Here are your answers:"

#Print out hash containing user inputs using for loop
for i in 0...form.length
  puts "#{form.keys[i]}: #{form.values[i]}"
end

#Ask user if they wish to change some data else print out hash
puts "\r\Is there an answer you would like to revise? (yes/no)"
yes_no = nil;
answer = nil;

#Change value in hash if user wants to
#Contains different outputs depending on user input
while yes_no = gets.chomp.downcase;
	case yes_no
		when "yes"
			puts "What portion of the form would you like to revise? Type 'none' to exit."
			while answer = gets.chomp.downcase;
				if form.key?(answer) then
					puts "What is your new answer regarding #{answer}?"
					form[answer] = gets.chomp;
					break;
				elsif answer == "none" then
					puts "\r\Thank you for answering."
					  break;
				else
					puts "This is not on the form."
				end
			end
			break;
		when "no"
			puts "\r\Thank you for answering the questions."
			break;
		when "none"
			puts "No change. We hope to see you again"
			break;
		else
			puts "Error, please type 'yes' or 'no'. Type 'none' to exit."
	end
end

#Print final hash using for loop
puts "\r\Your finalized answers:"
for i in 0...form.length
  puts "#{form.keys[i]}: #{form.values[i]}"
end

#Exit program