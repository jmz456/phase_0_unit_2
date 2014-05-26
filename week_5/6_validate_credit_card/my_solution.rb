# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: credit card number
# Output: good or bad credit card
# Steps:  
# 1. start with the second to last digit by calling reverse
# 	double every other digit until you read the first digit (if the index is odd? multiply by 2)
# 2. any double digit needs to be split, then add up the array.
# 3. if the array total is divisible by 10 giving a remainder of zero, the card it valid,
# 	else invalid.


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(card)
		@card = card
		if card.to_s.length > 16
		raise ArgumentError.new("invalid card number")    #AHHH!  I didn't know to_s was important for bringing outside information in the code
		else card.to_s.length < 16
		raise ArgumentError.new("invalid card number")    #why not just use an unless statement == 16, that would be better.
		end
	end

	def check_card
		

		@card.reverse.each_char {|value, index|
			if index.odd? # 0 1 2 3
				value*2
			else
				value
			end							#something wrong in this code, I think some methods don't work together
			}

		@card.split('').map {|i| i.to_i }  #if you don't split in the begining and iterate over the values first, then split, you can just add from here.
		
		sum = 0
		array.each{|x| sum+=a}
	end

end
#origin.each_slice(2).map { |x, y| x * 2}


# 4. Refactored Solution


# 1. DRIVER TESTS GO BELOW THIS LINE
newcard = CreditCard.new("1234567812345678")
print newcard.check_card


# 5. Reflection 
#What parts of your strategy worked?  What problems did you face?
	#I know what has to be done, but I can't get the code to work properly.  I thought that if I split the string after using the each_char method
	#I would be able to skip a step.  I think my code is still a string and not an integer.  I need to talk to someone during office hours about
	#my syntax.
#What questions did you have while coding?  What resources did you find to help you answer them?
	#My question is why my code doesn't work. I feel like it's so much trial and error.  Ruby-docs have been really resourcful.
	#I can't seem to get the syntax down.  I tried reading other solutions and they all make sense, but i can't put my own together.
	#If it's short, okay.  But when it gets long, I'm having trouble.
#What concepts are you having trouble with, or did you just figure something out?  If so, what?
	#I totally understand the concept of this exercise, but I dont' understand why I can't get my code to run.  I know its wrong, but I
	#can't even test part of it.
#Did you learn any new skills or tricks?
	#understanding pseudocode is getting better but how I write pseudo is broken down enough.  Need help with that.
#How confident are you with each of the Learning Competencies?
	#I'm actally pretty confident with iterating, manipulating data, solving components, but this challenge got the best of me... so I'm not so sure.
#Which parts of the challenge did you enjoy?
	#I'm enjoy the challenge, I like solving it
#Which parts of the challenge did you find tedious?
	#Writing bad code.









