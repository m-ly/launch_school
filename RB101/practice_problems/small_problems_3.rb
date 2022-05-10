#1 
puts "#1\n\n"

#input: 6 indiviual integers requested in sequentially
#output: string that includes and integer, and an array of 5 integers

# Rules
# The prompt will loop 6 times soliciting a number from the user
# Each number will be added to an array
# Once the loop has ended the algorithm will compare if the last number is already in the array

# Algorithm
# - repeat 5 times
# -  ask the user for a number
# -  add number to an array
# - ask the user for a number
# - check if the number is in the created array
# - if the number is in the array return a message saying so
# - else return a message that the number is not in the array

=begin
chosen_numbers = []

5.times do
  puts "==> Enter a number:"
  user_num = gets.chomp.to_i 
  chosen_numbers << user_num
end 

puts "==> Enter a number:"
last_num = gets.chomp.to_i

if chosen_numbers.include?(last_num)
  puts "==> The number #{last_num} is in #{chosen_numbers}."
else
  puts "==> The number #{last_num} is not in #{chosen_numbers}."
end
=end

#2 
puts "\n#2\n\n"

#input 2 numbers
#output strings showing the sum, difference, product, quotient, remainder, power

# Rules
# Request 2 positive integers from the user
# return string(s) showing the sum, difference, product, quotient, remainder, and power of the 2 numbers
# operations are performed in order that numbers are recieved -- ie numerator is num1 -- base is num1
# are all the numbers returned in integer form? or should  we use a floating value? To what space?

# Algorithm
# 2 times -- ask for a number from the rp -> save both numbers
# show string that sums both numbers
# string that finds difference of both numbers
# string that finds product of both numbers
# string that finds quotient of borth numbers
# string that finds remainder of bother  numbers
# string finds power of both numbers

puts "Choose a number:"
num1 = gets.chomp.to_i
puts "Choose a second number:"
num2 = gets.chomp.to_i
operators = ["+", "-", "*", "/", "%", "**"]

operators.map{ |operator| puts "#{num1} #{operator} #{num2} = #{(num1).method(operator).(num2)}"} 

#3
puts "\n#3\n\n"

# input -  string of word or muliple words
# output - string that states the number of characters in the input string excluding blank spaces

# Rules
# - input string can be a word or multiple words
# - blank characters should not be counted as a string
# - punctuation characters do count as a string

# Algorithm 
# - Ask the user for a string
# - create a new string that strips any blank characters from the user string
# - count the number of letters in a the string
# - return a new string with the number of letters in the user string, concatenated with the user string

puts "Please write a word or multiple words:"
user_input = gets.chomp
num_chars= user_input.delete(" ").size


puts "There are #{num_chars} characters in '#{user_input}'."

#4 
puts "\n#4\n\n"

#input: 2 integers
#output: product of integers in input

# Rules
# - must use a method to solve

def multiply(num1, num2)
  num1 * num2
end

puts multiply(3, 5)

#5 
puts "\n#5\n\n"

def squares(num)
  multiply(num, num)
end

puts squares(5) == 25
puts squares(-8) == 64

#6 
puts "\n#6\n\n"

# input  2 arguments 
# output true if one arguement is falsey, false if both arguements are truthy, or falsey

# Rules
# function takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise
# function returns a boolean result

# Algorithm 
# If both args == false --> false
# If both args == true --> false
# If only one arg == false --> true

def xor?(arg1, arg2)
  args = [arg1, arg2]
  if args.count(true) == 1 
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?) 
puts xor?(5.even?, 4.odd?) 

#7
puts "\n#7\n\n"

#input - an array 
#output - a new array tha returns every other item of the input array

# Rules
# input array can contain any type of data
# output array is a new array
# output array returns even index of the initial array 
# if input array is empty, the output arrary will be empty as well

# Algorithm 
# -initialize a new array
# - if index is even
# -- add value to the new array
# return the new array

def oddities(ary)
  odds_ary = []
  ary.each do |value|
    if ary.index(value).even?
      odds_ary.push(value)
    end
  end
  odds_ary
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

#8 
puts "\n#8\n\n"

# input: string
# output: boolean

# Rules
# If string is a palindrome return true
# case matters
# punctuation matters

# Algorithm 
# if the string is equal to string reverse return true

def palindrome?(phrase)
  if phrase == phrase.reverse
    true
  end
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true


#9 
puts"\n#9\n\n"
# input: string
# output: boolean

# Rules
# If string is a palindrome return true
# only count alphanumeric characters
# Ignore case

# Algorithm 
# initialize a new string 
# new string  = initial string stripped of all non-alphanumberic characters
# new string characters converted to lowercase
# if the new string is equal to new string reverse return true

def real_palindrome?(str)
  strip_str = /\w*/.match(str).to_s.downcase
  #strip_str = str.downcase.delete(^a-z0-9)
  if strip_str == strip_str.reverse
    true
  end
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false


#10 
puts "\n#10\n\n"

#input: integer 
#output: boolean

#Algorithm
#1. convert the integer to string
#2. test that the string is equal to the reversed string and return result

def palindromic_number?(number)
  true if number.to_s == number.to_s.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true