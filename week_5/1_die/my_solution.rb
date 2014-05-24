# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself.
# Challenge: Implement a basic 'Die' class which can be initialized with some number of sides.  We can then roll the die,
# returning a random number.  
# 2. Pseudocode

# Input:  roll the die
# Output:  a random number
# Steps:  
	# 1. create class Die (completed for us)
	# 2. initialize method
	# 3. create sides instance variable
	# 4. create an ArgumentError
	# 5. return the number rolled
	# 6. 


# 3. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides  # code goes here
#   	if sides < 1
#   		raise ArgumentError.new ("Only numbers 1 through 6")
#   	end
#   end
  
#   def sides
#      @sides  # code goes here
#   end
  
#   def roll
#     rand(1..@sides)#.rand(6)#.shuffle (random: Random.new(1))#random number between 1 and the number of sides   #code goes here
#     #what is rand(1..@sides)  seriously????
#   end
# end

# die = Die.new(3)
# die.sides #=> 6
# die.roll #=> returns a random number between 1 and 6

# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides  # code goes here
  	if sides < 1
  		raise ArgumentError.new ("Only numbers 1 through 6")
  	end
  end
  
  def sides
     @sides  # code goes here
  end
  
  def roll
    rand(1..@sides)#.rand(6)#.shuffle (random: Random.new(1))#random number between 1 and the number of sides   #code goes here
    #what is rand(1..@sides)  seriously????
  end
end

 die = Die.new(6)
 die.sides #=> 6
 die.roll #=> returns a random number between 1 and 6


# 1. DRIVER TESTS GO BELOW THIS LINE


print die.roll
print die.sides
print die.roll == 1
print die.roll == 2
print die.roll == 3
print die.roll == 4
print die.roll == 5
print die.roll == 6
# 5. Reflection 

# What parts of your strategy worked?  What problems did you face?
	# # I attempted to pseuocode in way that would demonstrate a process in a way a computer approaches a task.  I remembered the sandwich 
	# example from Learn to Program and approached that way.  While the strategy didn't work entirely, it helped me to understand
	# the code a bit better.  My only problem was how to figure out how to work with Random class.  I tried to play with it in the 
	# irb, but some of the methods gave me the same results and i wasn't sure how I would manipulate my data aside from its basic function.
# What questions did you have while coding?  What resources did you find to help you answer them?
	# I still have this question, and that is, what is an instance varialbe.  I know it's identified with a '@'.  I also think it's a 
# 	localized to the object in the class.  I'm still trying to understand it, but as I read over examples, it makes a little more sense.
# # What concepts are you having trouble with, or did you just figure something out?  If so, what?
# 	Again, understanding Instance Variables.
# # Did you learn any new skills or tricks?
# 	I'm not sure if i would call it new tricks, but I'm starting to understand the irb a little more.  I'm tyring to play with driver tests this
# 	time around and attempting more trial and error for fun.
# # How confident are you with each of the Learning Competencies?
# 	I'm still a bit confused with all the Learning Competenices.  I understand them all in parts, but as a whole, still confused.
# # Which parts of the challenge did you enjoy?
# 	I liked the idea of the exercise.  I enjoyed how complicated a little roll of the dice could be.  Although I think it would be a
# 	nightmare in any other programming language.
# # Which parts of the challenge did you find tedious?
# 	Nothing tedious, just enjoyed learning this time.