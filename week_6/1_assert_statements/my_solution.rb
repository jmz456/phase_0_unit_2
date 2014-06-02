# U2.W6: Testing Assert Statements

# I worked on this challenge [with, Issac Keith ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Well, prior to the code running, we first established the vairable 'name'.  
# Also notice that their is a yield statement in the assert method.  Yield will go
# to the first block provided.  When we run the code, the unless statement checks
# to see if the result is false.  If the result in the block is false, the method will 
# raise an "Assertion failed!" string.  Because bettysue test isn't false, it goes straight 
# to the yield statement (returns nil).  However, because "billybob" is false, our raise
# statement triggers our "Asstion failed!" string.

# 1. set variable to "bettysue"
# 2. call the assert method and set block name == "bettysue"
# 3. if "bettysue" block of code is false, raise alert
# 4. if "bettysue" block of code is true, run the block

# 3. Copy your selected challenge here
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
    else 
    	 :correct
    end
  end
  	
  
  def solved?                    
  	if @guess == @answer
  		 true
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



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield 
end

#p game = GuessingGame.new(235) 

p assert {game.guess(234) == :correct }   # => nil
#p assert {game.guess(235) == :correct }  # => Assertion Failed
p assert {game.guess(200) == :low } # => nil
p assert {game.guess(300) == :high }  # => nil                             
p assert {game.solved? == false }    # => nil
p assert {game.guess(235) == :correct }  # => Assertion Failed




# 5. Reflection
#What parts of your strategy worked?  What problems did you face?
	#I'm not so sure about strategy, but I noticed that once the raise error message appeared, my other assert statements below that line were not addressed.
  #In the above assert statements, you can see how I commented out line 93.  If I hadn't done this, I wouldn't get my nil statements for lines
  #94 to 97.  The raise error seems to stop in the middle of the code and discontinue until you fix it.
  #I'm assuming this is how it's supposed to work.  Similar to our RSPEC files from prior exercises.

#What questions did you have while coding?  What resources did you find to help you answer them?
	#  Easy.  Why is this not working?  That was the main question.  I didn't use any sources.  I played with the code for awhile to see the results.
  #  The irb helped me trouble shoot my processes.
#What concepts are you having trouble with, or did you just figure something out?  If so, what?
	#  I'm having trouble understanding the syntax of the assert method and the assert statements.  Ismail Kalimi helped guide me through some of
  # the code, but I'm not confident enough to create the next one on my own without full understanding.
#Did you learn any new skills or tricks?
	#  I have an idea as to how the assert method works and can relate that to our prior rspec files, but I'm not entirely sure of how to 
  # use it as a regular testing method for our code.
#How confident are you with each of the Learning Competencies?
	#  Translate driver test code into assert statements - I'm not sure I fully understand it yet.  Most of it.
#Which parts of the challenge did you enjoy?
	#  I really like testing and trying new things.  Learning how the code interacts.  It's a wonderful learning experience, and puzzling as well.
#Which parts of the challenge did you find tedious?
	#  I usually don't like answering this kind of question, but this time, it was trying to figure out how to rewrite the assert method to returns
  #  true statements instead of nil.  I though I figured it out but failed, I'll attempt it in the next challenge.