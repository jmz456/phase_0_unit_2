# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"], 
				["i", "o", "d", "t"], 
				["e", "c", "l", "r"], 
				["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# Part 1: a method that takes a group of coordinates and returns a string of the corresponding 'boggle board' elements
# 	a. define a method called create_word that takes the parameters board, and *coords
# 	b. coords has an undefined number of parameters
# 	c. map those to another array and run coord through each element 
# 	d. set your block of code to join your first parameter and last parameter.



# Initial Solution
def create_word(board, *coords)
	coords.map {|coord| board[coord.first][coord.last]}.join("")      #.first returns the first index and .last returns the last index
end

Refactored Solution
def create_word(board, *coords)
	coords.map {|coord| board[coord.first][coord.last]}.join("")
end

# # DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1],[1,1],[1,2],[0,3]) # => returns "code" row 2 col 1 / row 1 col 1 / row 1 col 2/ row 0 col 3
puts create_word(boggle_board, [0,1],[0,2],[1,2]) # => creates what california slang word  RAD
puts create_word(boggle_board, [0,0],[1,0],[0,1],[1,2]) # => bird
# Reflection 
# Had a curly brace in the middle of all that.  Drove me nuts.  I'm not sure how to refactor the CODE!  It's pretty RAD!
# Do people still use this word in Cali?  It's interesting.
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define a method called row that takes the parameters board and row
# the method will take row and return those values
# the output will be a row 0, 1, 2, or 3
# Initial Solution
# def get_row(row,board)  #  row(x,*y)
# 	board[row]
# 	#row[index]
# 	#row[board]
# end
# # Refactored Solution
def get_row(row,board)  #  row(x,*y)
	board[row]
end

# # DRIVER TESTS GO BELOW THIS LINE
p get_row(1, boggle_board) #=>  ["i", "o", "d", "t"]

# boggle_board = [["b", "r", "a", "e"], 
# 				["i", "o", "d", "t"], 
# 				["e", "c", "l", "r"], 
# 				["t", "a", "k", "e"]]
# Reflection 
#How is this so hard?!  I can't event think straight!  I totally found this by luck.


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Part 3: write a method that takes a column number and returns all the elements in the column.
# we need to pull the index and then the subindex
# Initial Solution
 def get_col(col, boggle_board)
	boggle_board.map {|x| x.fetch(col)} # so the .fetch method calls the index of each sub-array.
	
 end

p get_col(0, boggle_board)  #=>  ["b", "i", "e", "t"]    asks for every index 1 sub-index in each index
p get_col(1, boggle_board)  # => ["r", "o", "c", "a"]
p get_col(2, boggle_board)  # => ["a", "d", "l", "k"]
p get_col(3, boggle_board)  # => ["e", "t", "r", "e"] 

 # Refactored Solution
#clueless

# # DRIVER TESTS GO BELOW THIS LINE
puts boggle_board[0][1] == "r"   # returns boggle_board[row_number][column_number]  true
puts boggle_board[2][1] == "c" #=> should be true
puts boggle_board[3][3] == "e" #=> should be true
puts boggle_board[2][3] == "x" #=> should be false

# Reflection 
# Should i know how to do this?  I can't find any good resources to explain arrays within arrays.


