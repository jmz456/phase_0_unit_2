# U2.W6: Drawer Debugger


# I worked on this challenge [by myself; but owe a little credit to Isamil Kalimi for helping me with the last eat method].

# 2. Original Code

class Drawer

	attr_reader :contents    #way to share instance variables by using keys 

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def contents
		@contents = contents
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item  #this line adds the item to the contents array.
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?  JM removes the last element of the array.
		@contents.delete(item)										#JM in this case, fork was removed
	end

	def dump  # what should this method return?   JM: this looks like it should return an empty array
		puts "Your drawer is empty."
		@contents = []
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
attr_reader :type

# Are there any more methods needed in this class?   JM:added the clean_silverware method, but not sure what to put in it.

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware #JM added method
		@clean                #do I put @type or @clean?  or anything at all...
	end

end

 #knife1 = Silverware.new("knife")
 	

 silverware_drawer = Drawer.new
 silverware_drawer.add_item(Silverware.new("knife"))   #adding contents could work this way too
 silverware_drawer.add_item(Silverware.new("spoon"))
 silverware_drawer.add_item(Silverware.new("fork")) 
 silverware_drawer.view_contents  #=> The drawer contains -knife -spoon -fork

 silverware_drawer.remove_item
 silverware_drawer.view_contents  #=> The drawer cotains -knife -spoon
 sharp_knife = Silverware.new("sharp_knife")


 silverware_drawer.add_item(sharp_knife)

 silverware_drawer.view_contents  #=> The drawer contains - knife -spoon -sharp_knife

 removed_knife = silverware_drawer.remove_item(sharp_knife)
 silverware_drawer.view_contents #=>  JM:I added line 92.  If removed sharp knife contents should be knife spoon
 removed_knife.eat  
 removed_knife.clean_silverware 

 silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?  Should return "Your Drawer is empty."

# fork = Silverware.new("fork")
# silverware_drawer.add_item(fork) 
# fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
# fork.eat

#BONUS SECTION
#puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
 knife1 = Silverware.new("knife")
 silverware_drawer = Drawer.new
 silverware_drawer.add_item(knife1) 
 silverware_drawer.add_item(Silverware.new("spoon"))
 silverware_drawer.add_item(Silverware.new("fork")) 
 silverware_drawer.view_contents  #=> The drawer contains -knife -spoon -fork
 silverware_drawer.remove_item
 silverware_drawer.view_contents  #=> The drawer cotains -knife -spoon
 sharp_knife = Silverware.new("sharp_knife")





# 5. Reflection 
#What parts of your strategy worked?  What problems did you face?
	#  I typed comments througout the code to help myself follow what methods lead to what direction.  I was stuck on the last
	#  error and needed help reflecting.  I asked Ismail Kalimi and he did great guiding me through the last error in the challenge.
#What questions did you have while coding?  What resources did you find to help you answer them?
	# I knew the dump method was incomplete as it stated and made a note.  I wasn't sure what should go in the method block.  I didn't
	# learn until later I answered my own question.
#What concepts are you having trouble with, or did you just figure something out?  If so, what?
	# Every once in a while, I'm not quite sure how to set up my driver test code.  This is only because I don't quite  understand
	# what's going on in the code.  It takes a while for me to fully understand the purpose of my output, but I seriously think
	# I'm over thinking it.  
#Did you learn any new skills or tricks?
	#  I would say I'm starting to understand code better than I thought.
#How confident are you with each of the Learning Competencies?
	#  Use error message to correct sytax mistakes and drive development - I do this often, so I would say fairly.  However, there
	# are times when the errors make me feel like quiting.
	#  Define a method's responsibility - for the most part, in simple methods.  Complex methods are a different story.  There's more time
	#  and concentration.  I'm confident I can do it, but in how much time is the key question.
#Which parts of the challenge did you enjoy?
	#  This was fun challenge.  It certainly boosted my confidence a little which is a certainly a glass of cold water.
#Which parts of the challenge did you find tedious?
	#  I wouldn't say so.  This was a good exercise.