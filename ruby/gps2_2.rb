# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash
  # seperate string into individual items
  # loops through words to set default quantity 1.
  # print the hash list to the console 
# output: hash


def new_list(items)
  grocery_list = Hash.new(0)
  items.split(" ").each do |x|
    grocery_list[x] += 1
  end
  grocery_list
  
end

# puts create ("carrots apples cereal pizza")
  

# Method to add an item to a list (!)
# input: list, item name, and default quantity of 1
# steps: add new items into hash
# output: modified hash

def add_item (list, item, qty)
#   updated_list=grocery(list)

#   new_list=[]
#   new_list << item
#   results = {}
#   new_list.each {|k, v| results[k] = 1}
#   updated_list.merge!(results)
  list[item]=qty

end

# puts add_item (grocery_list, "wine", 2)

# puts add_item (grocery_list,"wine",3)

# list = "carrots apples cereal pizza"
# puts add_item_to_list(grocery("carrots apples cereal pizza"), "wine") 
  
# Method to remove an item from the list
# input: modified hash from add an item method
# steps: check if any value are 0 and delete all instances of that key
# output: modified hash 

def remove_item (list, item)
# copy_list=grocery(list)

# copy_list.select{|x| x!= :item}
# copy_list=delete_if {{k,v| v==0}
  list.delete(item)

end


# puts remove_item(grocery_list, "cereal") 
  
  
  
# Method to update the quantity of an item
# input: modified hash from add an item method, new quantity
# steps: call hash key directly to modify value with new quantity
# output: modified key and value added to existing hash 
def update (list, item, qty)
  #overwrites value (qty) for the key (item)
  list[item] = qty
end

# puts update(grocery_list, "pizza", 2)
  
  
# Method to print a list and make it look pretty
# input: modified existing hash 
# steps: go through hash to print out each key value pair
# output: The full hash (included all previously modified keys and values) with each key and value pair on a new line.

def print_hash(list)
 puts "Current grocery list:"
 list.each do |item_name, item_quant|
   puts "#{item_name}: #{item_quant}"
 end
 puts "---------------"
end

#Create a new list
grocery_list = new_list("carrots apples cereal pizza")

print_hash(grocery_list)
