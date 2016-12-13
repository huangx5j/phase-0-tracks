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

#method that iterates through the items, deleting any that meet a certain condition
def deleted
  values=[1,3,4,5,6,7,8]
  names={bob:"miller", ben:"smith", billy:"anderson"}
  puts "Before array element deleting: #{values}"
  puts "Before hash element deleting: #{names}"
  arr=values.delete_if {|num| num<5}
  yield(arr)
  hash=names.delete_if {|name| name.length<4}
  yield(hash)
end

deleted {|val| puts "After element deleting: #{val}"}

#method that filters a data structure for only items that do satisfy a certain condition
def filter1
  values=[1,3,4,5,6,7,8]
  names={bob:"miller", ben:"smith", billy:"anderson"}
  puts "Before array element deleting: #{values}"
  puts "Before hash element deleting: #{names}"
  arr=values.select {|num| num<5}
  yield(arr)
  hash=names.select {|name| name.length<5}
  yield(hash)
end

filter1 {|val| puts "After filtering: #{val}"}

#method that filters a data structure for only items satisfying a certain condition  
def filter2
  values=[1,3,4,5,6,7,8]
  names={bob:"miller", ben:"smith", billy:"anderson"}
  puts "Before array element deleting: #{values}"
  puts "Before hash element deleting: #{names}"
  
  emptyarr=[]
  values.each_with_index do |num| 
    if num.odd?  
      emptyarr << num
    end
  end
  yield(emptyarr)
  
  hash=names.keep_if do |name| 
    name.length>4    
  end
  yield(hash)
end