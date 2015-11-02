# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # This changes the string into lowercase and returns an array with each letter in order.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",   #An array would work better and be more modular.
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? Each is iterating through every element of the array input.
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? It's checking if x is in cipher.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? It's breaking because nothing has been returned.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? This decodes symbols which stand for spaces.
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? It returns an array with elements 0 through 9
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? It's checking if no match was found.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? It doesn't really return anything.
# end

# Your Refactored Solution
def decode(message, modifier=4)
  alphabet_string = "abcdefghijklmnopqrstuvwxyz"
  answer = []
  alphabet_array = alphabet_string.split("")
  message_array = message.split("")
  keep_same_array = [",", ".", "!", "'", "?", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  message_array.each do |char|
    if alphabet_array.include?(char)
      answer.push (alphabet_string[alphabet_string.index(char)-modifier])
    elsif keep_same_array.include?(char)
      answer.push(char)
    else
      answer.push (" ")
    end
  end
  return answer.join("")
end







# Driver Test Code:
p decode("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p decode("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p decode("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p decode("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p decode("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# What concepts did you review or learn in this challenge?

# I reviewed basic ruby, and how to iterate through each part of an array. I also practiced translating psudeocode into regular code.

# What is still confusing to you about Ruby?

# I'm not sure if it's confusing, but I still hate refactoring other people's code.

# What are you going to study to get more prepared for Phase 1?

# I'll go through a few more ruby exercises on my own.

# Keep your reflection limited to 10-15 minutes!