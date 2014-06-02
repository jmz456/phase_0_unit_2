# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# a. create a new class PezDispenser
# b. add flavors to pez dispenser  strawberry, lemon, apple, grape /red, yellow, green, purple/
# c. count the number of candies remaining
# d. eat a pez
# e. add flavor to dispenser
# f. see order of flavors pushed to dispenser  
# TESTING: test each method one by one



# 3. Initial Solution

# flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry) 
# class PezDispenser
# 	def initialize(dispenser)
# 		@dispenser = dispenser
# 	end
			
# 	def add_pez(candy)
# 		@dispenser.push(candy)  # can probably use << later
# 		puts "Let's add #{@dispenser.last.capitalize}."
# 	end

# 	def get_pez
# 		puts "yum yum yum" 
# 		puts "#{@dispenser.first.capitalize} is totally YUMMY!."
# 		@dispenser.shift  # fix code:  should remove first in array
# 		puts "yum yum yum"  #this is kind of a cheat.  without this, "cherry" appears as a result.
# 	end

# 	def pez_count
# 		@dispenser.length
# 		puts "You have #{@dispenser.length} pez!"
# 	end

# 	def flavor_order
# 		puts "Here's a look inside the dispenser:"
# 	  	puts @dispenser.map{|x| "-- " + x}
# 	end
 
# end  

# p super_mario = PezDispenser.new(flavors)
# p super_mario.pez_count # => returns "You have 9 pez!""
# p super_mario.flavor_order
# p super_mario.add_pez("kiwi") 
# p super_mario.get_pez
# p super_mario.flavor_order
# p super_mario.pez_count
# p super_mario.get_pez
# p super_mario.get_pez
# P super_mario.pez_count

# 4. Refactored Solution

class PezDispenser
	def initialize(dispenser)
		@dispenser = dispenser
	end
			
	def add_pez(candy)
		@dispenser.push(candy)
		puts "mmm #{candy} pez."
	end

	def get_pez
		@dispenser.shift
	end

	def pez_count
		@dispenser.length
	end

	def see_all_pez
		puts "Here's a look inside the dispenser:"
	  	puts @dispenser.map{|x| "-- " + x}
	end
 
end  


# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

def assert
	raise "Assertion Failed" unless yield
end

p assert {super_mario.pez_count == 9} # =>  returns nil
p assert {super_mario.pez_count == 10} # => returns "Assertion Failed"


# 5. Reflection 
#What parts of your strategy worked?  What problems did you face?
	#I had a pretty good pseudocode that helped me structure what I needed.  Getting started was a little difficult, so I had to
	#refer to my notes.  One of the problems I faced was I didn't scroll down far enough to notice the driver test code.  As an 
	#exercise it turned out better in my favor because I needed to create my own driver code.
#What questions did you have while coding?  What resources did you find to help you answer them?
	# The initialize process seems a little confusing to me.  I can't really find a good resource to explain it other than it
	# "starts the process".  For example, my array was named flavors, super_mario = PezDispenser.new(flavors), my initialize method
	# contains the place holder (dispenser), within the initialize method is @dispenser = dispenser.  
	# So if I want to push a new index to the end of my array, what would the acting object be?
#What concepts are you having trouble with, or did you just figure something out?  If so, what?
	# I think I understand most of the concepts from this unit week_6.  However, I don't fully understand how they all tie together.
	# This sounds like a nonchalant way of saying, I don't understand much of anything.  I think this exercise has helped me
	# to clarify the assert method, especially since their is so little information
#Did you learn any new skills or tricks?
	# I used my errors from the irb to help me build this code.  That's something I can add to skills.
#How confident are you with each of the Learning Competencies?
	# Implement a basic Ruby class and identify when to use instance variables - 
	# Translate a user story into driver code and solutions - feel pretty good about this considering I made my own driver code for this
	# challenge.
	# Translate driver test code into a class structure using object-oriented design - I did this well, but I'm embarrassed to say
	# that I still don't get the whole "object-oriented design" denotation.
#Which parts of the challenge did you enjoy?
	# I loved building this exercise from scratch.  or nearly from scratch.
#Which parts of the challenge did you find tedious?
	# I used the wrong variable for calling methods and it took me two hours before I found the answer in my error messages in irb.
	# I got into such a bad habit of skimming over the errors, I kept overlooking it.