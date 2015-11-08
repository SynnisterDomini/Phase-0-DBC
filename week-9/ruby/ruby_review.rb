# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
# 1. Create method reverse_words that accepts an argument.
# 2. If the argument is not a string, do nothing.
# 3. If the argument is a string, seperate it into the individual words and reverse them.


# Initial Solution

# def reverse_individual(word)
# 	seperate = word.split("")
# 	reverse_array = seperate.reverse
# 	new_string = reverse_array.join("")
# 	return new_string
# end

# def reverse_words(string)
# 	if string.is_a? String 
# 		array = string.split(" ")
# 		final_array = []
# 		array.each do |word|
# 			final_array.push(reverse_individual(word))
# 		end
# 		return final_array.join(" ")
# 	else
# 		return string
# 	end
# end




# Refactored Solution

def reverse_words(string)
	if string.is_a? String 
		array = string.split(" ")
		final_array = []
		array.each do |word|
			final_array.push(word.reverse)
		end
		return final_array.join(" ")
	else
		return string
	end
end


#driver code
# reverse_words("hello Kyle")


# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert()
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# 1. Creates a method assert
# 2. Assert raises a failure unless the test returns true.


# 3. Copy your selected challenge here
class CreditCard
   def initialize(number)
     @number = number.to_s
     @array1 = @number.split('')
     @array2 = @array1.dup
     @array2.map! do |i| i.to_i*2 if @array2.index(i) %2 == 0 end
     @total = nil
     unless number.to_s.length == 16
      raise ArgumentError.new ("This is an invalid number")
     end
   end

   def check_card
   	 @array1.map! {|i| i.to_i if @array1.index(i) %2 == 1}
     @array2.map! {|i| i.to_s.split('')}
     @array2.flatten!.compact!
     @array2.map! {|i| i.to_i}
     @array1 << @array2
     @array1.flatten!.compact!
     @total = @array1.reduce(:+)
     if @total % 10 == 0
       return true
     else
       return false
     end
   end
end




# 4. Convert your driver test code from that challenge into Assert Statements

def assert()
  raise "Assertion failed!" unless yield
end	

newcard = CreditCard.new(1234567890123456)
goodcard = CreditCard.new(4408041234567901)
assert {goodcard.check_card == true}


# Reflection

# What concepts did you review in this challenge?

# I reveiwed enumberables and iterations.

# What is still confusing to you about Ruby?

# I'm still not too sure about the assert method

# What are you going to study to get more prepared for Phase 1?

# I'll play around a bit more with the newer challenges.