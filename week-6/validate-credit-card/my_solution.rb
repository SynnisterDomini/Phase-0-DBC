
# 
# Your previous Plain Text content is preserved below:
# 
# # Class Warfare, Validate a Credit Card Number
# 
# 
# # I worked on this challenge [by myself, with: ].
# # I spent [#] hours on this challenge.
# 
# # Pseudocode
# 
# # Input: A series of numbers, sixteen integers total
# # Output: The sum of those sizteen digits.
# # Steps: 
# 1. Verify that the input is 16 digits total 
# 2. IF there are not exactly 16 digits, raise an argumenterror.
# 3. Break apart all of the digits. 
# 4. Double every other digit from index -2 to index 0
# 5. Break apart all of the doubled digits. 
# 6. Sum all the digits.
# 7. IF the sum is a multiple of 10, validate credit card (return True)
# 8. ELSE reject credit card. (Return False)
#
# # Initial Solution
# 
# # Don't forget to check on initialization for a card length
# # of exactly 16 digits

#  class CreditCard
#    def initialize(number)
#      @number = number.to_s
#      @array1 = []
#      @array2 = []
#      @total = nil
#      unless number.to_s.length == 16
#       raise ArgumentError.new ("This is an invalid number")
#      end
#    end
   
#    def double
#      @array1 = @number.split('')
#      @array2 = @array1.map do |i| i.to_i*2 if @array1.index(i) %2 == 0
#      end
#     end
   
#    def split
#      @array1.map! {|i| i.to_i if @array1.index(i) %2 == 1}
#      @array2.map! {|i| i.to_s.split('')}
#      @array2.flatten!.compact!
#      @array2.map! {|i| i.to_i}
#    end
   
#    def sum
#      @array1 << @array2
#      @array1.flatten!
#      @array1.compact!
#      p @array1
#      @total = @array1.reduce(:+)
#      p @total
#    end
   
#    def validate
#      if @total % 10 == 0
#        p "This is a valid card"
#      else
#        p "This is not a valid card"
#      end
#    end
 
# end
# newcard = CreditCard.new(1234567890123456)
# newcard.double
# newcard.split
# newcard.sum
# newcard.validate
# 
# 
# # Refactored Solution
# 
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
   
   # def split
   #   @array1.map! {|i| i.to_i if @array1.index(i) %2 == 1}
   #   @array2.map! {|i| i.to_s.split('')}
   #   @array2.flatten!.compact!
   #   @array2.map! {|i| i.to_i}
   # end
   
   # def sum
   #   @array1 << @array2
   #   @array1.flatten!.compact!
   #   @total = @array1.reduce(:+)
   # end
   
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
# newcard = CreditCard.new(1234567890123456)
# newcard.check_card

# 
# 
# 
# 
# # Reflection

# What was the most difficult part of this challenge for you and your pair?

# The most difficult part of this challenge was probably working with my pair at 7 in the morning (my decision/mistake).
# Other than that, the psudocode was pretty good and the tests weren't bad either. We ran into a few hiccups and I feel
# the code could be a little more readable, but I'm glad we were able to come up with something fucntional.

# What new methods did you find to help you when you refactored?

# We didn't really change our methods, instead we ended up shortening the code and making it a bit more readable and compact.

# What concepts or learnings were you able to solidify in this challenge?

# I was able to solidify the concept of accessing nested information, and how to change information types in order to use methods related to those information types.
