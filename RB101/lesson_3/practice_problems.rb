# 1 
puts "\n#1\n\n"
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers 

# 2

=begin

This will print [1, 2, 2, 3] because numbers was not reassigned after unique was called and unique is not a mutating method.
  
end

=begin
Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

! is TYPICALLY used to denote that a method is destructive and will change the initial object that it has called.    ? is used to denote when a method returns a boolean response

what is != and where should you use it? --> This means not equal to
put ! before something, like !user_name -->  This means not user name
put ! after something, like words.uniq!  --> This typically means the method will change the object it is calling
put ? before something -->  This is the ternary operator for if/of
put ? after something --> typically used when a method returns a boolean response (in this case the boolean equivelent)
put !! before something, like !!user_name -->  This turns something into it's boolean equivelant

=end 

# 3
puts "\n#3\n\n"
advice = "Few things in life are as important as house training your pet dinosaur."

advice = advice.split
new_advice = ""

advice.each do |word|  
  if word == "important"
    word = 'urgent'
    new_advice += word + ' '
  else
    new_advice += word + ' '
  end 
end


puts new_advice

##### ALT  --> advice.gsub!("important", "urgent")

# 4
puts "\n#4\n\n"
numbers = [1, 2, 3, 4, 5]

numbers.delete(1)

numbers.delete_at(1)
puts numbers

# the first method deletes the value of 1 from the array,  the 2nd method deletes at the index of 1 in the array

#TODO 5 . find if 42 is between 10-100
puts "\n#5\n\n"
puts (10..100).cover?(42)

#6
puts "\n#6\n\n"
famous_words = "seven years ago..."

four_score = "Four Score and "

puts famous_words = four_score<<famous_words

famous_words = "seven years ago..."

four_score = "Four Score and "

puts "#{four_score}#{famous_words}"


#7 --> Remove nested list from concat'd list to return only one list with all names.
puts "\n#7\n\n"
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten

# 8  -- return list with barney's bname and number
puts "\n#8\n\n"
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
barney = []

flintstones.each do |key, value|
  if key == "Barney"
    barney = [key, value]
  end
end

p barney


##ALT flintstones.assoc("Barney")
