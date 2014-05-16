# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode
#define a method called get_grade
#calculate the mean of an array which will output the sum divided total elements of the array
#if the result of the array is greater than 90, return a letter grade of 'A'
#if the result of the array is greater than 80, return a letter grade of 'B'
#if the result of the array is greater than 70, return a letter grade of 'C'
#if the result of the array is greater than 60, return a letter grade of 'D'
#if the result of the array is less than 60, return a letter grade of 'F'
# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
=begin
def get_grade(array, *y)
	array = array.inject(0) {|x,y| (x + y)} / array.length
	print array
	if array >= 90
		return "A"
	elsif array >= 80
		return "B"
	elsif array >= 70
		return "C"
	elsif array >= 60
		return "D"
	elsif array < 60
		return "F"

end
end
=end

# 3. Refactored Solution

def get_grade(array, *y)
	array = array.inject(0) {|x,y| (x + y)} / array.length
	
	if array >= 90   # don't understand why I can't refactor: "A" if array >= 90
		 "A"
	elsif array >= 80
		 "B"
	elsif array >= 70
		 "C"
	elsif array >= 60
		 "D"
	elsif array < 60
		 "F"

end
end

# 4. Reflection 
=begin
My initial strategy was perfect.  I understood how to calculate sum, so I would just have to 
divide by the array length.  If the result of the array was greater than 90, or 80, I would 
return the respective letter grade.  I spent 3 hours on this trying to figure out why it wouldn't work.
I turns out that prior to completing this challenge, I wrote a little code and include 'arrayA' in
one of my methods.  I must have been reading my errors wrong until I hit a lightbulb.  Problem solved,
good code.  deleted the 'A' in 'arrayA' and that fixed everything.  I was still under the impression 
that I had to write two methods.  Once again, after discovering from the first exercise that only 1 was
needed, everything else made sense.  My code worked perfectly.

I understand that ruby will implicitly return a statement without using "return." However I can seem to 
refactor beyond this.  I thought I could refactor line 47 to a single line, but it doesn't seem to work.
The wildcard '*' is something I barely remembered from codecademy.  A wildcard is good when the number of elements of an
array to be entered are unknown.  I don't know how I remembered this, but my method doesn't work without it.

Testing is fun as long as the results and code come-up within a short period of time.  The feeling of victory
is probably the greatest part of the challenge.  The worst part is running test after test and not 
understanding the errors from your TDD.

I wouldn't say I'm comfortable with the learning competencies.  I don't think I can complete them without
a bit of research or referring to my notes.
=end