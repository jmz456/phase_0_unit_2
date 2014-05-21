# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing?  It's creating an array.
# 2. How does the rotate method work? What does it work on?  The rotate method is like the reverse method.
# 3. What is `each_char` doing? pass each to each string from a block
# 4. What does `sample` do? sample choose a random element from the array
# 5. Are there any other methods you want to understand better?  .zip  .sample   .rotate
# 6. Does this code look better or worse than your refactored solution  
#    of the original cipher code? What's better? What's worse?  it's easier to look at
# 7. Is this good code? What makes it good? What makes it bad?


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# There's a lot of new code here I wish I completed and researched first.  I think this lesson
# would have prepared me better for the rest of the lessons.  Some of these are confusing because
# it looks like they do the same thing.  For example, .rotate seems like reverse, but there
#   must be some slight difference.

# It's interesting to follow the code around to see what code is leading into what direction.  It's
# like following a snake path and trying to figure out where the trail leads.
