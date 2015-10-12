# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  answer = Array.new
  source.each {|word| answer.push(word) if word.to_s.include? thing_to_find }
  return answer
end

# my_array_finding_method(i_want_pets, "t")

def my_hash_finding_method(source, thing_to_find)
  answer = Array.new
  source.each {|k,v| answer.push(k) if v == thing_to_find}
  return answer
end

# my_hash_finding_method(my_family_pets_ages, 3)
# Identify and describe the Ruby method(s) you implemented.
# The methods I used were pretty simple. The only new one I used was include?
# The .include? method returns a boolean value if there is a matach between an input and a data point.
#

# Person 2

def my_array_modification_method!(source, thing_to_modify)
  new_array = []
  source.each { |x| x.is_a?(Integer) ? new_array << x + thing_to_modify : new_array << x }
  source.replace(new_array)
  return source
end


def my_hash_modification_method!(source, thing_to_modify)
  source.each { |k, v| source[k] = v + thing_to_modify }
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# For the array I used each to iterate through the array and is_a?(Integer) to single out the numbers then modified the numbers and pushed them to a new_array. 
# Then I replaced source with the new array.
# For the hash I used each again to iterate through each key value pair. Then for each key I added to its value.
#





# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# Nothing really. I feel like thats the easy part. It just takes a long time to find a method that works. 
# Sometimes I find one that should work but I'm getting the syntax or order wrong.
# By the time I get it it's pretty simple to explain
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#