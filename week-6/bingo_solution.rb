# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @announce = nil
#     @letters = nil
#     @numbers = nil
#   end

#   # def roll (letter, number)
#   #   @letters = letter
#   #   @numbers = number
#   # end


#   def play
#     @letters = ["B", "I", "N", "G", "O"].sample
#     @numbers = 1 + rand(100)
#     # print @bingo_board[1][0]
#     if @letters == "B"
#       @bingo_board.each {|i| i[0] = " X" if i[0] == @numbers}
#     elsif @letters == "I"
#       @bingo_board.each {|i| i[1] = " X" if i[1] == @numbers}
#     elsif @letters == "N"
#       @bingo_board.each {|i| i[2] = " X" if i[2] == @numbers}
#     elsif @letters == "G"
#       @bingo_board.each {|i| i[3] = " X" if i[3] == @numbers}
#     elsif @letters == "O"
#       @bingo_board.each {|i| i[4] = " X" if i[4] == @numbers}
#     end
#   end

#   def show_board
#     print " | " + @bingo_board[0][0].to_s + " | " + @bingo_board[0][1].to_s + " | " + @bingo_board[0][2].to_s + " | " + @bingo_board[0][3].to_s + " | " + @bingo_board[0][4].to_s + " |\n"
#     print " | " + @bingo_board[1][0].to_s + " | " + @bingo_board[1][1].to_s + " | " + @bingo_board[1][2].to_s + " | " + @bingo_board[1][3].to_s + " | " + @bingo_board[1][4].to_s + " |\n"
#     print " | " + @bingo_board[2][0].to_s + " | " + @bingo_board[2][1].to_s + " | " + @bingo_board[2][2].to_s + " | " + @bingo_board[2][3].to_s + " | " + @bingo_board[2][4].to_s + " |\n"
#     print " | " + @bingo_board[3][0].to_s + " | " + @bingo_board[3][1].to_s + " | " + @bingo_board[3][2].to_s + " | " + @bingo_board[3][3].to_s + " | " + @bingo_board[3][4].to_s + " |\n"
#     print " | " + @bingo_board[4][0].to_s + " | " + @bingo_board[4][1].to_s + " | " + @bingo_board[4][2].to_s + " | " + @bingo_board[4][3].to_s + " | " + @bingo_board[4][4].to_s + " |\n"
#   end

#   def last_roll
#     print @letters
#     print @numbers
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @announce = nil
    @letters = nil
    @numbers = nil
  end

  # def roll (letter, number)
  #   @letters = letter
  #   @numbers = number
  # end


  def play
    @letters = ["B", "I", "N", "G", "O"].sample
    @numbers = 1 + rand(100)
    # print @bingo_board[1][0]
    if @letters == "B"
      @bingo_board.each {|i| i[0] = " X" if i[0] == @numbers}
    elsif @letters == "I"
      @bingo_board.each {|i| i[1] = " X" if i[1] == @numbers}
    elsif @letters == "N"
      @bingo_board.each {|i| i[2] = " X" if i[2] == @numbers}
    elsif @letters == "G"
      @bingo_board.each {|i| i[3] = " X" if i[3] == @numbers}
    elsif @letters == "O"
      @bingo_board.each {|i| i[4] = " X" if i[4] == @numbers}
    end
  end

  def show_board
    print " | " + @bingo_board[0][0].to_s + " | " + @bingo_board[0][1].to_s + " | " + @bingo_board[0][2].to_s + " | " + @bingo_board[0][3].to_s + " | " + @bingo_board[0][4].to_s + " |\n"
    print " | " + @bingo_board[1][0].to_s + " | " + @bingo_board[1][1].to_s + " | " + @bingo_board[1][2].to_s + " | " + @bingo_board[1][3].to_s + " | " + @bingo_board[1][4].to_s + " |\n"
    print " | " + @bingo_board[2][0].to_s + " | " + @bingo_board[2][1].to_s + " | " + @bingo_board[2][2].to_s + " | " + @bingo_board[2][3].to_s + " | " + @bingo_board[2][4].to_s + " |\n"
    print " | " + @bingo_board[3][0].to_s + " | " + @bingo_board[3][1].to_s + " | " + @bingo_board[3][2].to_s + " | " + @bingo_board[3][3].to_s + " | " + @bingo_board[3][4].to_s + " |\n"
    print " | " + @bingo_board[4][0].to_s + " | " + @bingo_board[4][1].to_s + " | " + @bingo_board[4][2].to_s + " | " + @bingo_board[4][3].to_s + " | " + @bingo_board[4][4].to_s + " |\n"
  end

  def last_roll
    print @letters
    print @numbers
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]


new_game = BingoBoard.new(board)
new_game.show_board
new_game.play
new_game.play
new_game.play
new_game.play
new_game.play
new_game.show_board
new_game.last_roll


#Reflection
