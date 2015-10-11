# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)


class Grocerylist
	def initialize
		@list = Hash.new
	end

	def add(item, quantity)
		@list[item] = quantity
	end

	def remove(item)
		@list[item] = 0
	end

	def update(item, quantity)
		@list[item] = quantity
	end

	def print
		puts @list
	end
end

lst = Grocerylist.new
lst.add("ice cream", 1)
lst.add("cookie", 1)
lst.add("soup", 3)
lst.print
lst.remove("cookie")
lst.update("soup", 2)
lst.print