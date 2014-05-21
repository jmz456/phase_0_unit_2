# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked
#    Jeremy Speaks
#    What I learned from this solution
#    the solution seems very clear and simple, but not sure I understand
# Copy solution here:

# class Array
# 	def pad(value, replacement=nil)
# 		if (size < value)
# 			self + [replacement] * (value - size)
# 		else
# 			return self
# 		end
# 	end

# 	def pad!(value, replacement=nil)
# 		if (size < value)
# 			fill(replacement, size..value)
# 		else
# 			return self
# 		end
# 	end
# end



# 2. Second Person's solution I liked
#  Patrick Reynolds
#    What I learned from this solution
#   This solution includes something called self.  It's the first time
#   I've seen this.
# Copy solution here:
class Array
  def pad!(min_size, value = nil)
    self.count.upto(min_size - 1) do
        self.push(value)
    end
    self
  end
   
  def pad(min_size, value = nil)
    array = Array.new(self)
    array.count.upto(min_size - 1) do
        array.push(value)
    end
    array
  end
end



# 3. My original solution:
# class Array
# 	def pad(min,y=nil)
# 		if array.length < min
# 			return Array.new.pad(x)
# 		else array.length >= min
# 			return array
# 		end
# 	end

# 	def pad!(min,y=nil)

# 	end


# 4. My refactored solution:

# I don't even know how to modify my original solution.


# 5. Reflection
#  Complete confusion.