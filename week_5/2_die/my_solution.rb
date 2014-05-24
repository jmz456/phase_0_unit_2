# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode
# create a new die class
# it takes an array of strings as its Input
# when Die.roll is called
# use sample to return one of the strings
# if Die.new is passed an empty array
# then create an ArgumentError
# # Input:
# Output:
# Steps:


# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	@labels = labels
#   	if labels == []
#   		raise ArgumentError.new("need labels")
#   	end
#   end

#   def sides
#   	@labels.length
#   end

#   def roll
#   	@labels.sample  #how do you select a random string?
#   end
# end

# die = Die.new(['A','B','C','D','E','F'])
# die.sides #=> still returns the number of sides, in this class 6
# die.roll # => returns one of ['A','B','C','D','E','F'] randomly


# 4. Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if labels == []
  		raise ArgumentError.new("need labels")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample  
  end
  
end


# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A','B','C','D','E','F'])

p die.sides 
p die.roll
die.roll == ('A' || 'B' || 'C' || 'D' || 'E' || 'F')
   #THIS GOT SOME WEIRD RESULTS.  SOMETIMES TRUE, SOMETIMES FALSE.
   #I thought I would try something on the fly.

die_deux = Die.new (%w[H I J K L M N O P])
p die_deux.sides
p die_deux.roll
# 5. Reflection 
# Break down problems into implementable Pseudocode
# implement a basic Ruby class and identify when to use instance variables
# use if/else statements, string methods, while/until loops, Enumerable#each methods
# find and use built-in Ruby methods to solve challenges

# still don't understand instance variables, look at codecademy again

#What parts of your strategy worked?  What problems did you face?
	#I approached this exercise literally.  Although my pseudocode is a little ugly, it allowed me to 
	#translate most of my code.  I didn't face any problems, but what I am facing is understanding what I'm doing.
	#I'm no closer to understanding instance variables than where I was yesterday.  This is a problem for the following
	#challenges.  I was able to read the errors and debug my code, but I don't know if that's a good thing.

#What questions did you have while coding?  What resources did you find to help you answer them?
	#i only had one question, and that was how to return a random string.  i went into stack overflow and saw
	# a reference to #sample.  I've used it before so it was a little familiar.  i played with it in the irb for couple
	# minutes and then implemented it into my code.
#What concepts are you having trouble with, or did you just figure something out?  If so, what?
	# Perhaps I need to compare instance variables with class variables and see how they differ within the code.
	# Maybe that will give me some perspecitive.
#Did you learn any new skills or tricks?
	# Aside from practice, I don't think i learned any new skills or tricks.
#How confident are you with each of the Learning Competencies?
	# I'll have to admit, while I do feel a little better this time around compared to our last challenge
	# I wouldn't go about bragging how confident I was.  I'd most likely stay quiet and listen to instruction.
#Which parts of the challenge did you enjoy?
	# I really enjoyed the composition.  Pseudocoding, writing out the code and test(not ver well).  
#Which parts of the challenge did you find tedious?
	# nothing was really tedious, as always, a great learning experience.