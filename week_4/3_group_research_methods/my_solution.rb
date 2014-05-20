# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
   source.select {|x| x.to_s.include?(thing_to_find)}
end
my_array_finding_method(i_want_pets, "t")

def my_hash_finding_method(source, thing_to_find)
   source.select {|key, value| value.to_i == thing_to_find}.keys
   # dog_years = my_family_pets_ages.select {|name, age| age == thing_to_find}
 end

# Identify and describe the ruby method you implemented. 
#for the first method, I was attempting to call the select method on i_want_pets.
#the code is intended to search which index includes thing_to_find and return true
#then I was going to have that index return the element in the array.

#for the second method, I was attempting to call the select method on my_family_pets_ages and pass a block of code.
#the block is supposed to select matching key/value pairs and return the thing_to_find.
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  # Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# What parts of your strategy worked?  What problems did you face?
# I wrote out a small piece of pseudocode and wrote the code.  I never received a true statement.  I tried a ton of different combinations
# and somehow got lost in whether I'm completing this challenge correctly.  I started using the console from codecademy to check my 
# sanity.  I clearly must be doing something wrong with methods.  My block of code is right, and it executed the way it should in codecademy.
# So why I couldn't implement a method baffles me.  I think I'm losing my mind.


# What questions did you have while coding?  What resources did you find to help you answer them?
# http://www.ruby-doc.org/core-2.1.1/Enumerable.html#method-i-take
# I used ruby-doc.org to search for codes to pass through.  My biggest need is to see these codes in examples.
# Some of the enumerator methods are explained.  However, some are a little complicated to understand.


# What consepts are you having trouble with, or did you just figure something out?  If so, what?
# I'm having trouble executing methods that work and seeing the confirmation.  I try using print and put within the methods
# but I don't get the return I expect.


# Did you learn any new skills or tricks?
# I think how to test ruby files using the irb and creating test files is certainly a new skill.  Though I'm currently in practice.

# How confidient are you with each of the Learning Competencies?
# I couldn't get any of the methods to return 'true' in the tests.  I was 90% confident what I was doing was right.
# However, not getting the results I was expecting has destroyed whatever confidence I think I had in my competencies.


# Which parts of the challenge did you enjoy?
# I like the research, and I like the challenge.  I like the interaction between software and seeing some sort of working result.

# Which parts of the challenge did you find tedious?
# The most tedious part of the challenge was doing the same thing over and over again expecting a different result.  I think
# that's what's been making me insane.
