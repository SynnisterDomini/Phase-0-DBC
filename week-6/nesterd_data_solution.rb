# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# print[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# print hash[:outer][:inner]["almost"][3]


# ============================================================

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# print nested_data[:arra][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# print number_array
number_array.each {|i| i.map!{|n| n+5} if i.is_a?(Array)}
number_array.each {|i| number_array[number_array.index(i)] += 5 if i.is_a?(Integer)}
# print number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# What are some general rules you can apply to nested arrays?

# Nested arrays can be accessed by imagining you are directly substituting an array for a portion of your code.
#For instance: given array = [1, newarray = [0, 2]],
#you can access using the following logic:
# array[1][1] == newarray[1] == 2.

# What are some ways you can iterate over nested arrays?

#you can iterate over nested arrays using each, map, and collect.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

#I found a method for iterating over nested structures, I'm not sure if it's good, but it works. I'm actually curious to see
#how my peers did it, so I'm looking forward to peer reviews.