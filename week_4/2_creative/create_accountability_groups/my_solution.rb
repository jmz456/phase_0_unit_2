# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself].

# 2. Pseudocode
#define a method and name it group_of_4
#the method will take output 4 names based on the rational of remainers
#hange strings to symbols
#iterate through the array of symbols searching for x % 7 = 1
#if the symbol index is divided by 7 and the remainer is 0, it goes to group 1
#if the symbol index is divided by 7 and the remainer is 1, it goes to group 2
#etc.





# Input: a method that outputs groups of 4
# Output: a list of accountability groups for 3 different units
# Steps: could either create key value pairs or use element index
# may have to convert names to symbols
# select groups of groups of 4 giving 7 groups total or 7 new arrays for unit 1.
# run a random loop until all 7 groups are different for unit 2
# run a random loop again until you get another 7 for unit 3, but don't equal unit 1 and unit 2


# 3. Initial Solution
dbc_group = ["Adrian Tawadros" , "Alan Jameson" , "Andrew Adams" , "Angela Kosek" , "
  Ann Lin" , "Darrell Jones" , "David Hwang" , "Francisco Scala" , "
  Isaac Keith" , "Ismail Kalimi" , "James Miller" , "James Walker" , "
  Jeremy Wong" , "Jonathan Young" , "Joseph Webb" , "Maddison Brusman" , "
  Marek Pyczkowski" , "Max Diener" , "Praniti Sinha" , "Quy Tran" , "
  Ravi Patel" , "Ryan Spencer" , "Samuel Dominic Kirn Clements" , "Sara Chen" , "
  Spencer Zhang" , "Steve Loar" , "Tanner Blumer"] 

 def accountability(array)
	unit1 = array.shuffle.each_slice(4){|a| p a}
	unit2 = array.shuffle.each_slice(4){|a| p a}
	unit3 = array.shuffle.each_slice(4){|a| p a}

	#array.shuffle(random: Random.new(7))
	# group1 = Array.new(group[0..3])
	# group2 = Array.new(group[4..7])
	# group3 = Array.new(group[8..11])
	# group4 = Array.new(group[12..15])
	# group5 = Array.new(group[16..19])
	# group6 = Array.new(group[20..23])
	# group7 = Array.new(group[24..27])
	

 end

accountability(dbc_group)


# 4. Refactored Solution


# 1. DRIVER TESTS GO BELOW THIS LINE

# 5. Reflection 
# What i would like to code and what I actually psueudocode are definately a mismatch.
# I like the idea of the challenge but executing it into code is difficult enough.
# I've seen some other solutions to these problems and get discouraged with half of them.
# I try to implement my own code but I'm just not writing it correctly.  There's so 
# much out there I want to try, but don't know how to execute.  I wish I had more guidance
# on this challenge or paired with someone because it acutally looked like fun.  I came across
# the shuffle method last week and couldn't remember it.  I kept searching for random and
# couldn't apply the code properly.  The code above was from ruby-doc.org.  I've added the shuffle
# method to my notes for later use.

