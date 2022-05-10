#3 
puts "\n#3\n\n"

def digits_list(num)
  arr = num.to_s.split(//).map { |char| char.to_i}
end

p digits_list(1234)
p digits_list(1)

#4
puts "\n#4\n\n"

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(in_list)
  
  occurs = {}
  in_list.each do |item|
    if not occurs.key?(item)
      occurs[item] = 1
    else
      occurs[item] += 1
    end
  end 
  occurs.each {|item, count| puts "#{item} => #{count}"}
end
    

# puts count_occurrences(vehicles)

#5
puts "\n#5\n\n"

def reverse_sentence(string)
  container = string.split.reverse!.join(" ")
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == ''

#6
puts "\n#6\n\n"
# take input of a string and return the string with any words over 5 letters long reversed

# input = string
# output = string

# explicit rules
#1 all words over 5 letters long are reversed, otherwise left the same
#2 spaces are only inclued when more than one world is present
#3 the string words return in the same order as original import

# implicit rules
#1 Punctuation remains the same

# Algorithm
# - split the string into an array of individual words
# - check each word in the string and if it's over 4 letters reverse the word
# - convert the words in the array back into a single string seperated by a space

def reverse_words(str)
  words_arr = str.split
  words_arr.each do |word|
    if word.size >= 5
      word.reverse!
    end
  end
  words_arr.join(" ")
end

puts reverse_words('Professional')         
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')  

#7
puts "\n#7\n\n"

#input = positive integer
#output = a string of 1's and 0's the length of the integer starting with the number one

#explcit rules
#1 the string will always begin with "1", and will be followed by "0" if needed
#2 length of the string will match the given integer
# TODO 3 if the optional arguement which defaults to 1 is set at 0 -- the string starts withe "0"

#algorithm
# - intialize an empty string
# - initialize a counter at 0
# - while the counter < the supllied integer
#   - if the  remainder of the counter / 2  eqauals 0 then str[counter] equals '1'
#        - appened the assigned number to the string
#   - else the str_counter equals '0'
#     - appened the assigned number to the string
# - add 1 to the counter

def stringy(num, opt=1)
  num_str = ''
  counter = 0
  while counter < num
    if counter % 2 == 0
      num_str[counter] = '1'
    else
      num_str[counter] = '0'
    end
  counter += 1
  end
  num_str
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#8
puts "\n#8\n\n"

#input = array of integers
#output = average of the sum of all the integers on input

#explicit rules
#1 the input is a single array which can never be empty
#2 the integers in the array should all be positive numbers
#3 the output should be an integer

# Algorithm
# - For each number in the array add it to the previous number carrying a running total
# - once you have a sum of all the numbers in the array divide by the length of the array
# - return number as an integer

def average(arr)
  (arr.sum / arr.size).to_f
end

puts average([1,5, 87, 45, 8, 8])
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

#9 
puts "\n#9\n\n"

#input = positive integer
#output = sum of all the digits in the given integer as an int

#rules
#1 There is only one number given and it must be a positive integer
#2 answer should be written w/o any looping components

# Algorithm
# - Split number into array
# - Sum the indivual numbers of the array

def sum(int)
  int.to_s.split(//).map {|char| char.to_i}.sum
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#10
puts "\n#9\n\n"

#input: positive interger and a boolean value
#output: if boolean is true --> output = 1/2 integer supplied,  if false --> output == 0

# Explicit Rules
# - The function must take two arguments
# - If the boolean is false the return will always be 0

# Algorithm
# - If 2nd arguement is false -- output will be 0
# - If the 2nd arguement is true -- output ==  user_int/2 


def calculate_bonus(num, bool)
  if bool == true
    bonus = num / 2
  else
    bonus = 0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000