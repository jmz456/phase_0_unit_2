# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode
#define a method called total
#calculate sum of the array


#define a method called sentence_maker
#xxconcatinatexx join the elements of the array so the output is one string

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
=begin
def total(array)
	array = array.inject(0) {|sum,x| sum + x }

end

def sentence_maker(array)
	array = array.join(" ").capitalize.push "."
end
=end

# 3. Refactored Solution
 
def total(array)
	array.inject(0) {|sum,x| sum + x }

end

def sentence_maker(array)
	array.join(" ").capitalize.<< "."
end
 

# 4. Reflection 
=begin
My initial strategy was a total failure.  Instead of creating one method to calculate a total
of an array, I thought I was supposed to create two methods.	As my errors kept bouncing
back and forth, I attempted to restart and just create one because if one array worked they maybe
it would in both arrays.  This is where I discovered that it would be one method accepting an array.

As I approached my strategy again, I fixed my pseudocode to reflect one method.  My next challenge
was calculating the sum.  At first, I thought the task was easy.  Then I realized I don't think
I have ever returned the sum of an array before.  The challenge was a google search for methods
that I've never seen before.  I referenced the exercises prior to phase 0 and my notes from codecademy,
but I couldn't find something this simple.  There was a way while setting the sum to equal zero prior 
to the solution, but that proved an excessive challenge.  I referred to stackoverflow.com for some ideas 
and found a great solution using the .inject method.  While I understand that this takes an argument
and a block, I'm still not entirely sure how it works.  I played with the code for about 30 minutes.

I had seen the .join method in the past and so applied it to the sentence_maker method.  However, I resulted
in google searches looking for how to use this method correctly.  I think one of my biggest pitfalls
was I used testing as a trial and error.  Perhaps I should be using the irb.  

One of the other things that was helpful was displaying the method results while I was testing.  It helped
me identify what was wrong with my coding and syntax.

I went back through codecademy at the beginning of this week and ran through all the exercises again.  That 
was probably very helpful because I felt rusty from not using ruby for some time and having such a hard time
with JavaScript last week.
=end
