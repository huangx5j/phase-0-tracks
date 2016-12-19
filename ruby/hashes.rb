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


