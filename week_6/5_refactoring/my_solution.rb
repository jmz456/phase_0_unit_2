# U2.W6: Refactoring for Code Readability


# I worked on this challenge [with Isamil Kalimi].


# Original Solution
class CreditCard
    def initialize (number)
        if number.to_s.length != 16
            raise ArgumentError.new()
        end        
        @number = number
    end
       def check_card ()
          numbers_to_array = []
          temp_array = @number.to_s.split("").reverse
          temp_array.each_with_index do |item, index|
            if index % 2 == 0
              numbers_to_array<<(item.to_i).to_s
            else 
              numbers_to_array<<(item.to_i * 2).to_s
            end
          end
          numbers_to_array.map! {|item| item.size == 2? item.split("") : item} #splits
          #double string like "18" into an array [1,8]
          numbers_to_array.flatten! #concatenates main and sub arrays and converts each element
          #to integer
          numbers_to_array.map!{|item| item.to_i}
          sum = numbers_to_array.inject(:+)
          sum%10 == 0
        end
      end



# Refactored Solution

class CreditCard
    def initialize (number)
        raise ArgumentError.new() unless number.to_s.length != 16    
        @number = number
    end
    
    def check_card ()
          numbers_to_array = []
          temp_array = @number.to_s.split("").reverse
          temp_array.each_with_index do |item, index|
            if index.even?
              numbers_to_array<<(item.to_i).to_s
            else 
              numbers_to_array<<(item.to_i * 2).to_s
            end
          end
          numbers_to_array.map! do |item| 
          if item.size == 2  
            item.split("").map{|item| item.to_i} 
          else
            item.to_i
            end 
          numbers_to_array.flatten!.inject(:+) % == 0
          end
    end
end
      
# 1. DRIVER TESTS GO BELOW THIS LINE
invalid_number = ("1"*16).to_i
credit = CreditCard.new(invalid_number)
puts credit.check_card() == false

valid_number = 4563960122001999
credit = CreditCard.new(valid_number)
puts credit.check_card() == true


# Reflection 
#What parts of your strategy worked?  What problems did you face?
	# This was an interesting approach to this week's exercise.  Ismail and I established roles and I drove the session.
	# Our intial intent was to rework someone's intial code.  We didn't run into any problems, but I did become
	# a little confused not realizing we could be using if then statments with question marks and colons.
#What questions did you have while coding?  What resources did you find to help you answer them?
	# Ruby Monk was a great resouce that explained the if then statement.  I showed a great way for refactoring.
	# However, I don't know how I feel about it as far as readability.
#What concepts are you having trouble with, or did you just figure something out?  If so, what?
	# I'm still having problems with syntax, but I've attented tutoring sessions and the last tutor explained to 
	# me how I could effectivly debug my code.  I'm actually still working on my credit card challenge.
#Did you learn any new skills or tricks?
	# I think refactoring using if? then: has been something new.
#How confident are you with each of the Learning Competencies?
	# Explain what code is doing:  semi explain what code is doing.
	#  Refactor for readability:  I know what to refactor at times, but aggravated when it doesn't work.
#Which parts of the challenge did you enjoy?
	# I actually liked reading thorugh the code.  It was interesting to so how someone thinks.
#Which parts of the challenge did you find tedious?
	# Nothing tedious, just getting my own code to work is a challenge.