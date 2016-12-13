#5.3 Pairing
#Joseph Huang
#Brian Bernheim

#Method that takes a block
def status
	puts "Before passing a block"
	2.times {yield}
end

status {puts "After passing a block"}

#method that iterates through the items with .each and .map! for array & hash
arr1=["name1","name2","name3"]
hash1={name1: "bob", name2:"ben", name3:"billy"}

arr1.each {|name| puts name}
arr1.map! do |name|
  puts "Before modification: #{name}"
  mod=name+" Miller"
  puts "After modification: #{mod}"
end

hash1.each {|name| puts name}
hash1.map do |k, v|
  puts "Before modification: #{v}"
  puts "After modification: #{"%#{v}%"}"
end