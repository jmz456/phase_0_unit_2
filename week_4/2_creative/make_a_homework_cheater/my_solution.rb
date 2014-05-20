# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution
def essay_writer(title, topic, date, thesis_statement, pronoun)
	puts "#{title}"
	puts ""
	if "#{pronoun}" == "male"
		puts "#{topic} was an important person in #{date}.  He did a lot. #{thesis_statement}"
	elsif pronoun == "female"
		puts "#{topic} was an important person in #{date}.  She did a lot. #{thesis_statement}"
	elsif pronoun == "thing"
		puts"#{topic} was an important object in #{date}.  One of the most important discoveries to date. #{thesis_statement}"
	else pronoun == "place"
		puts"#{topic} was an important place in #{date}.  An important place in our world of history. #{thesis_statement}"
end

end

 

 

 

#The First Shogun#{"title"}
# Ieyasu Tokugawa#{topic} was an important person in 1603#{date}. He{pronoun} did a lot. I want to learn more about him. 
# His most important contribution to history is that he founded the Tokugawa period, a peaceful 
# time that lasted over 200 years.#{thesis_statement} Tokugawa's contribution is important.

# 4. Refactored Solution

# def essay_writer(title, topic, date, thesis_statement, pronoun)
# 	puts "#{title}"
# 	puts ""
# 	puts "#{topic} was an important person in #{date}.  He did a lot. #{thesis_statement}" if pronoun == "male"
		
# 	puts "#{topic} was an important person in #{date}.  She did a lot. #{thesis_statement}" elsif pronoun == "female"
		
# 	puts"#{topic} was an important object in #{date}.  One of the most important discoveries to date. #{thesis_statement}" elsif pronoun == "thing"
		
# 	puts"#{topic} was an important place in #{date}.  An important place in our world of history. #{thesis_statement}" else pronoun == "place"
		
# end
# end




# 1. DRIVER TESTS GO BELOW THIS LINE

essay_writer("The First Shogun","Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male") 
essay_writer("First Woman in Space", "Valentina Tereshkova", 1963, "She boarded and piloted the Vostok 6.  She was a Soviet cosmonaut and engineer.  She's one of the most important women in history for her contributions to space travel.", "female")
essay_writer("The Printing Press", "Johaness Gutenberg", 1439, "Johaness additions to the printing press are upon one of the single most important inventions of the mid 1400s.", "thing")
essay_writer("Lost the War, Won the Politics", "Vietnam", 1975, "The Vietnam War was a Cold War-era proxy war that occurred in Vietnam, Laos, and Cambodia fro 1956-1975", "place")


# 5. Reflection 

I tried to refactor based on the exercise from Codecademy, but it doesn't seem to allow it.  I'm not
really sure how to approach this exercise.  There are things I would like to do, but I'm limited to my ability at the moment.
I had a problem with trying to identify the pronoun object.  How Ruby treats objects is a little confusing at times.

The concepts I'm having problems with most is getting my methods to work right.  I understand our assignments and can read 
everything, but I'm still having trouble writing out the code.  I'm still having trouble thinking like a computer.

I enjoy this challenge most for it's creative approach to what Ruby could potentially do.  
