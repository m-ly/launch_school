#1 
puts "\n#1\n"
#input: an array of numbers
#output the sum of the sums of each leading sequence for that array

#algorithm
# intialize a sum for current iteration that equals 0
# intialize a variable to carry the running sum of the total all iterations summed together starting at 0
# for each number in the array
#  -- the sum for the current iteration equals the current iteration's sum + the current number
#  -- the running sum equals the the previous running sum total + the current iteration's sum

def sum_of_sums(arr)
  iter_sum = 0
  running_sum = 0
  arr.each do |num|
    iter_sum += num
    running_sum += iter_sum
  end
  running_sum
end
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

#2 
puts "\n\n#2\n"

# input -> multiple strings that user enters from a prompt
# output -> a single string of the words concataenated into an existing string

=begin
puts "Enter a noun"
noun = gets.chomp

puts "Enter a verb"
verb = gets.chomp

puts "Enter an adjective"
adjective = gets.chomp

puts "Enter an adverb"
adverb = gets.chomp

puts "The #{adjective} #{noun} likes to #{verb} #{adverb}."
=end

#3 
puts "\n\n#3\n"
#input -> a string
#output --> a list of all the substrings that can be created with the string from shortest to longest

#Rules

#Algorithm
# initialize an empty array
# initialize a counter at 0
# - unil the counter == the size of the str
#  -- for the slice of 0 to the counter --> add the return to the array
# -- add one to the counter


def leading_substrings(str)
  sub_strings = []
  counter = 0
  until counter == str.size
    sub_strings << str[0..counter]
    counter += 1
  end
  sub_strings
end 

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


#4 
puts "\n\n#4\n"
#input -> str
#output -> all substrings from the string

#Rules:
# the return should be in order that the substrings are first seen in the string
# use the leading substring method

# alogorithm
# initialize a variable for the index at 0 
# for each char in the str 
# - call leading substrings for the character at the current index
# -- iterate the index by one

def substrings(str)
  substrings = []
  index = 0 
  until index == str.size
    substr = str[index..str.size]
    substrings << leading_substrings(substr)
    index += 1
  end
  substrings.flatten
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

#5 
puts "\n\n#5\n"
# input is a string
# output is an array of all substrings in the string that are palindromes

#Rules
# substring size must be > 1

# initialize a collection array
# create an array of the substrings
# for each substring
#  - if the substring equals the substring reversed and is greater than 1 
#     - append to the collection array
# return the collection array

def palindromes(str)
  substring_palindromes = []
  all_substrings = substrings(str)
  all_substrings.each do |sub_string|
    if sub_string == sub_string.reverse && sub_string.size > 1
      substring_palindromes << sub_string
    end
  end
  p substring_palindromes
end
 

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


#6
puts "\n\n#6\n"

# input -> two numbers (to be used as a range)
# output -> print out all numbers in the range
#        - if the number is divisible by 3 print 'fizz'
#        - if the number is divisible by 5 print 'buzz'
# .      - if the number is divisible by 3 and 5 print 'fizzbuzz'

# Rules
# the first number is the starting number
# the 2nd number is the ending number
# should we be counting up or down? --> Example only includes up 

# Algorithm
# initialize current_number as num1
# while less than num2
#    - if current_number can be divided by 5 && 3  -> return fizzbuzz
#    - if current_number can be divided by 5  --> return buzz
#    - if the current_number can be divided by 3 --> return fizz
# .  - else return the current number
# iterate the current number by 1

def fizzbuzz(num1, num2)
  current_number = num1
  while current_number <= num2
    case 
      when current_number % 5 == 0 &&  current_number % 3 == 0
        puts 'FizzBuzz'
      when current_number % 5 == 0 
        puts 'Buzz'  
      when current_number % 3 == 0
        puts 'Fizz'
      else
        puts current_number
    end
  current_number += 1
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


#7
puts "\n\n#7\n"
#input --> str
#output --> a new str with every character in the input string doubled

# Rules
# -special characters and spaces count as characters

# Algorithm
# initialize a blank collection string
# for each character in the initial string
#  --  append the character times 2 to the return string
# return collection string

def repeater(str)
  doubled = ''
  str.each_char { |char| doubled << char * 2}
  p doubled
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

#8 
puts "\n\n#8\n"

#input --> string
#output --> a string where all consonants are doubled

#rules 
# vowels, special characters, and spaces should not be doubled
# Case sensitive 

#algorithm
# initialize a list of consonants
# initialize a collection string
#  for each character in the input string 
#  -- if the character is included in the consonants list
#     -- append the character * 2 to the collection string
#  -- else append the character to the string
# return the collections tring

def double_consonants(str)
  doubled = ''
  consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
  str.each_char do |char|
    if consonants.include?(char.downcase)
      doubled << char << char
    else
      doubled << char
    end
  end 
  p doubled
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""


#9 
puts "\n\n#9\n"
#input -> an integer
#output -> integer with position of each number reversed from initial index

#Algorithm
#  intialize a variable that the value equals 0 - this will hold the reversed number
#  start a loop that will run while the integer is greater than 0
#     - set up  short method to build the integer through the loop  reversed  equals the reversed variable * 10
# .            (this shifts the number 0 --> 00 --> 000 --> 0000 etc)
#     - the last number is the remainder of the number divided by 10 
#     - add the reversed number + the reversed variable
# .   - divide the number by 10 
#            - this shifts the input number 000 --> 00 --> 0 
# .  return the value of the reversed variable
#  

def reversed_number(num)
  reversed = 0
  while num > 0
    last_digit = num % 10
    reversed *= 10 
    reversed += last_digit
    num /= 10
  end
  reversed
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

#10 
puts "\n\n#10\n"

#input - a string 
#output -> the character that returns at the middle index of the string

## Rules  
# if the size of the string is even return the middle 2 characters

#Algorithm
# initialize a collection string
# assign the length of the str to a variable
# assign the middle index to a variable of (length divided by 2)
# if the length of string is even
#  -- subtract 1 from the length of the string
# .-- collection string is reassigned to the middle index equals the slice of the string at middle index + 1
# else the return character is the character at the middle index appended to the collection string

def center_of(str)
  center_char = ''
  center_index = (str.size / 2) 
  if str.size.even?
    center_char << str[center_index - 1, 2] 
  else
    center_char << str[center_index]
  end
  p center_char
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'