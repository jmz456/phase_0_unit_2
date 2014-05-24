# U2.W5: Build a simple guessing game SOLO CHALLENGE

# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: an integer
# Output: a true/false answer and printed string
# Steps: 
  # a. create class called GuessingGame that initializes an integer called answer
  # b. define instance method GuessingGame#guess which takes an integer called guess as input
  # c. instead of returning a string, a symbol called 
  # 		:high is returned if the guess is larger than the answer
  # 		:correct if the guess is equal to the answer   
  # 		:low if the guess is lower than the answer
  # d. define instance method GuessingGame#solved
  # 		returns true if solved and false if not

# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)  #class initialized with integer called answer
#   	@answer = answer
    
#   end

#   def guess(guess)
#   	@guess = guess         #define instance method called @guess
# 	if guess > @answer     #  <<< and that my friends is an instance variable stretching across blocks.  whoo
#     	return :high
#     elsif guess < @answer
#     	return :low
#     else guess == @answer
#     	return :correct
#     end
#   end
  	
  
#   def solved?                     #added a '?' here to make it true or false, so solved? is defined
#   	if @guess == @answer
#   		return true
#   	elsif nil
#   		return false
#   	else false
# 	end
# end
# end


  	# if nil
  	# 	return false
  	# elsif @guess == @answer
  	# 	return true
  	

  # 		false if nil			# i wonder why if nil, return false didn't work before.
  # 		true if @guess == @answer
  # #	@answer.include?(@guess)
  # # 	if true
  # 		return true
  # 	elsif false
  # 		return false
  # 	else []
  # 		return false
  # 	end

  
  # Make sure you define the other required methods, too





# 4. Refactored Solution

class GuessingGame
  def initialize(answer)  #class initialized with integer called answer
  	@answer = answer
    
  end

  def guess(guess)
  	@guess = guess         #removed all the returns and changed nil to []
	if guess > @answer     
    	 :high
    elsif guess < @answer
    	 :low
    else guess == @answer
    	 :correct
    end
  end
  	
  
  def solved?                    
  	if @guess == @answer
  		 true
  	elsif []
  		 false
  	else false
	end
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

# game = GuessingGame.new(10)
#  game.solved? # => false
#  game.guess(5) # => :low
#  game.guess(20) # => :high
#  game.solved? # => false
#  game.guess(10) # => :correct

game = GuessingGame.new(234)     #uh... Houston, we have a problem...
 game.solved? #=> false
 game.guess(100) # => :low
 game.solved?# => false
 game.guess(200)# => :low
 game.solved?# => false
 game.guess(300)# => :high
 game.solved?# => false
 game.guess(250)# => :high
 game.solved?# => false
 game.guess(234)# => :correct
 game.solved? #=> true
 game.guess(235) # => :high
 game.solved? # => false		#cancel that Houston...

# 5. Reflection 
#What parts of your strategy worked?  What problems did you face?
	# I can't say that pseudocode was very helpful this time.  I did pseudo earlier, but as
	# I continued writing my code, I realized the errors in my pseudocode.  I had a slight problem
	# with instance variables.  I now understand what it means when they are accessible across blocks
	# of code.  Otherwise, they would  just be local variables. Yah!  
#What questions did you have while coding?  What resources did you find to help you answer them?
	# I didn't understand at first why I kept getting errors for my if, elsif and else statements.
	# I knew they were correct, but I kept getting false tests from the spec file.  I realized that it was
	# under the wrong instance method.  I included it under the initialize method instead of the guess method.
#What concepts are you having trouble with, or did you just figure something out?  If so, what?
	# The instance variable really clicked after I created the if else statements.
#Did you learn any new skills or tricks?
	# I don't know if I'm writing test code properly.  I think I'm messing up this skill.
#How confident are you with each of the Learning Competencies?
	# Breaking down problems into implementable pseudocode: moderate
	# Implement a basic Ruby class and identify when to use instance variables: a little confident
	#Use if/else statements, string methods, while/util loops, Enumberable#each methods: moderate, some better than others
	# Explain how instance variables and methods represent the characteristics and actions of an object: moderate
#Which parts of the challenge did you enjoy?
	# I enjoyed testing the code and creating the code from instruction.  Kind of like a word problem.
#Which parts of the challenge did you find tedious?
	# I enjoyed this challenge.