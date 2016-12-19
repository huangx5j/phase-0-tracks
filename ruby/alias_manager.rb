#Write a method that takes a spy's real name and create a fake name by
#Swapping the first and last name.
#Changing all of the vowels (a, e, i, o, or u) to the next vowel

#Swap first and last names
def swap(name)
	split_name = name.split(' ')
	swapped = split_name.reverse.join(' ')
	swapped	
end

#Change vowels to the next vowel
def next_vowel(string)
	string.tr!("aeiouAEIOU", "eiouaEIOUA")
	string
end

#Change consonant to next consonant
def next_conson(string)
	string.tr!("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ",
		"cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWYZB")
	string
end

#Method to call all the other methods to change the name
def fakename(name)
	next_conson(next_vowel(swap(name)))
end

#Print out all the names
def printing(list)
	list.each do |name, alias_name|
		puts "#{name} transforms into #{alias_name}"
	end 
end

