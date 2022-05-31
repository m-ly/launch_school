#1 
puts "#1\n"

#input -> an array with 2 or more elements (used for a persons name) & and a hash with two key value pairs (with :title :occupation)
# output -> a sentence with that returns name of the person as well as thier occupations

def name_join(arr)
  full_name = arr.join(' ')
end

def greetings(name, job)
  puts "Hello #{name_join(name)}! It's nice to have a #{job[:title]} #{job[:occupation]} around."
end

greetings(['John', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

#2 
puts "\n\n#2\n"

#input -> integer
#output -> integer.  

# Rules
# The input integer should be squared unless the number is a double
# if the integer is an even number of digits and left-side digits are exactly the same as its right-side digits the number should remain the same

#Algorithem
# convert the number to a string
# find the size of the string and divide by 2 to find the index of the split
# split the string at the index and assign each 1/2 of the string to a value and convert back into an integer
# if both values are the same the number is a double
#   if the number is a double -- return the number
# else the return the number ** 2

def twice(num)
  str_num = num.to_s
  split = str_num.size / 2 
  first_half = str_num[0..split -1]
  second_half = str_num[split..-1]
  if str_num.size == 1
    p num *= 2
  elsif first_half == second_half
    p num
  else 
    p num *= 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

#3
puts "\n\n#3\n"

# input -> integer
# output -> if int is positive return a negative version of that number
#        -> if int is negative or 0 return the number

# Algorithgm
# check for negative
# if the number is negative or 0 return the number
# else convert the number to a negative number

def negative(num)
  num > 0 ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby


#4 
puts "\n\n4\n"
# input -> integer
# output -> an array of of 1 up to the integer iterated by one each time

#algorithm 
# initialize empty arr
# set up a range from 1 -- input number
# for each number append to the array

def sequence(num)
  sequenced = []
  (1..num).each { |number| sequenced << number}
  sequenced
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

#5 
puts "\n\n#5\n"
#input --> str
#output --> boolean value true if all characters are uppercase

#Rules
# special characters and numbers don't count

#Algorithm
# split the string into an array
# check that all the elements of the array are equal to capitalized equivelant

def uppercase?(str)
  letters = str.split
  letters.all?{ |letter| letter == letter.upcase}
end 

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true


#6
puts "\n\n#6\n"
# input -> string
# output -> array with each word inthe string as an element, concatenated with the length of the element

# Rules
# all words are seperated by a single space
# any substring of non-space characters is a word

#Algorithm
# split the string into a new array
# for each element of the array -- map the value to equal the value + len of the value

def word_lengths(str)
  words = str.split
  p words.map! {|word| word = "#{word} #{word.size}"}
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []


#7 
puts "\n\n#7\n"

#input --> string of first and last name
#output --> string "last, first" (note the comma and space)

#algorithm
# split the string into an array 
# reverse the array, then convert back to string an  join witha comma

def swap_name(name)
  p reversed_name = name.split.reverse!.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

#8 
puts "\n\n#8\n"
#input --> two integers; 1st is a count, the 2nd is the first number of a sequence that the method will create
#output --> an array that contains the same number of elements as the count array, each element is a multiple of the starting number

#Algorithm 
# initalize a counter that equals 0
# initialize an array 
# until counter = the num_of_elements 
# -- append  << start equals start * (counter + 1)
# -- counter += 1
# return the array

def sequence(num_ele, start)
  count = 0
  multiples = []
  until count == num_ele
    multiples << start * (count + 1)
    count += 1
  end
  multiples
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

#9 
puts "\n\n#9\n"
#input --> 3 integers btwn 0-100
#output --> string that corresponds to the letter grade of the mean of the score

#Algorithm 
# mean equals the  sum of the inputs divided by number of inputs (3)
# Case statement to judge agains mean 

def get_grade(grade1, grade2, grade3)
  mean = (grade1 + grade2 + grade3) / 3
  case 
    when (90..100) then "A"
    when (80..89)  then "B"
    when (70..79)  then "C"
    when (60..69)  then "D"
    else                "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

#10
puts "\n\n#10\n"
#input = a nested array of a string and integers
#output = flat array of string repeated the number of times of the integer in the array

#Algorithm 
# initialize a collection array
# for each sub array in the input array
#   the number is the value at index 1 - for the number of fruit
# .   add the fruit to the collection array
# return the array

def combine(arr)
  items = "#{arr[0]} " * arr[1] 
end

def buy_fruit(fruits)
  list_o_fruit = []
  fruits.each do  |fruit|
    fruit[1].times do 
      list_o_fruit << fruit[0]
    end
  end
  p list_o_fruit
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
 ["apples", "apples", "apples", "orange", "bananas","bananas"]


 #11 
 puts "\n\n#11\n"
 # input --> a list of strings that are indivdual words
 # output --> a list of all words that are anagrams

 # Algorithm 
 # 

 words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']