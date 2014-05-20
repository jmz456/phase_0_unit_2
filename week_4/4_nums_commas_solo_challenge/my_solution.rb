# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode
# define a method called 'separate_comma'
# parameter should be any positive integer
# What is the input?
	# a positive integer
# What is the output? (i.e. What should the code return?)
	# comma delimited integer
# What are the steps needed to solve the problem?
	# convert integers to strings
	# insert commas at the correct index for any size number of 3 digits, 6 digits or 9 digits.


# 2. Initial Solution
# def separate_comma(integer)
	# comma = integer.to_s.split(//)
	# if comma.length > 3
	# 	return comma.insert(-4,",").join
	# elsif comma.length < 4
	# 	comma.join
	# elsif comma.length > 7
	# 	return comma.insert(-8,",").join
	# comma.reverse

	# end
#end	


# separate_comma(56789876)
# separate_comma(567898)
# separate_comma(5678)
# separate_comma(456)

# 3. Refactored Solution
def separate_comma(integer)
integer.to_s.split('').reverse.each_slice(3).map{|x| x.join}.join(",").reverse
end

# 4. Reflection 
# This challenge has been a disgusting mess for me.  I was baffled at how to return commas
# at certain points.  I gave up and resorted to solutions online.  However, I didn't stop there.
# I decided to disect the code and attempt to make my personal mark-up.  I'm still confused
# about some concepts, .each_char, .each_with_index and enumerators.
# .each_char.  I also don't understand how .each_slice(3) create an enumerator and allows me
# to create placeholders for commas.

# I should have realized that my delimited could be anything really.

# I don't know why I haven't been keeping a journal of ruby methods.  I have notes all over the place
# so I've compiled all of them into one file along with descriptions and examples.
# I've been so stressed out trying to complete challenges that I forgot to learn from them.  Regardless
# or night I get them right or wrong, it's my attempt and what I learn.  I'm completely new to this
# and barely have any experience nor did I have enough prep time prior to phase 0.

#I think I forgot to enjoy learning.  I probably spent the better half of this night learning
#new ways to code rather than worry about finishing.
