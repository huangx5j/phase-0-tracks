# 6.5 Pairing
# Joseph Huang
# Avril Dunleavy

# Implementing a class to satisfy Rspec tests in todo_list_spec.rb
class TodoList
	# Acts as instance variables to be accessed outside of methods
	attr_accessor :listvalues

	def initialize(list)
		@listvalues = []
		list.each {|item| @listvalues.push(item)}
	end

	def get_items
		@listvalues
	end

	def add_item(item)
		@listvalues << item
	end

	def delete_item(item)
		@listvalues.delete(item)
	end

	def get_item(index)
		@listvalues[index]
	end
end