#1
puts "#1\n\n"

#input - 2 strings
#output - one string -- makde of 2 strings concatenated (short-long-short)

#Rules
# - method will need to determine the size of both strings
# - method will concatenate in the order of short -> long -> short
# - strings are both different lengths

#Algorithem
# - count the size of both strings
# - if str1 is greater than str2
# -    concatentate as str2str1str2
# - else 
# -    concatenate str1str2str1

def short_long_short(str_a, str_b)
  cat_string = ''
  if str_a.size > str_b.size
    cat_string = str_b + str_a + str_b
  else
    cat_string = str_a + str_b + str_a
  end
end

puts short_long_short('abc', 'defgh')  == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"

#2
puts "\n#2\n\n"

# input --> int 
# output --> string
# Rules
# - return value is a string that begins with the century number
# - century number will equal (int) of input/2
# - string ends with 
#    (1) st, 
#    (2) nd, 
#    (3) rd, 
#    (4, 5, 6, 7, 8, 9, 0) th 
# - new centuries begin in years  that end with 01

# Algorithm
# century equals input / 100 + 1 unless the input ends with 0 --> then its input / 100
#    - firstdigit  + last_
#    - if last_ = 1 -> 'st'
#    - if last_ = 2 -> 'nd'
#    - if last_ = 3 -> 'rd'
#    - else -> 'th'

def century(year)
  century_pre = ''
  century_last = ''
  
  if year % 100 == 0 
    century_pre = (year / 100)
  else 
    century_pre = ((year / 100) + 1)
  end
  
  end_year = century_pre % 10

  if [11, 12, 13].include?(century_pre)
    then century_last = 'th'
  else
    case end_year
    when 1 
      then century_last = 'st'
    when  2 
      then century_last =' nd'
    when 3 
      then 'rd'
    else 'th'
    end
  end
  century_pre.to_s + century_last
end
  
puts century(2001)


#3 
puts "\n#3\n\n"

#input = integer
#output = boolean

# Rules
# if a year is divisible by 100, 400, and 4 it is a leap year
# if the year is divisible by 100 and 4 it is not a leap year
# if a year is divisible by 4 it is a leap year if the other conditions are false
# input must be greater than 0 

# Algorithm
# if year % 4  and year % 400 and year % 4 == 0 -> true
# if year % 4 and year % 100 == 0 --> false
# if year % 4 == 0 --> true
# otherwise --> false

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0 
    true
  else
    false
  end
end

puts leap_year?(240000)


#4
puts "\n#4\n\n"
# input = year
# output -> boolean

# Rules 
# 1752 is a leap year
# leap years are every sequential 4 years prior too 1742
# after 1752 the prior leap year function is ued

# Algorithm
# if the year is < 1752 and is divisible by 4 --> true
# else use the prior algo

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0 
    true
  else
    false
  end
end

puts leap_year?(240000)


#5
puts "\n#5\n\n"
# input = integer
# output =  sum of all the multiples of 3 and 5 between 1 and the given input

# Rules
# - input is > 1

# Algorithm
# find all numbers in the range of 1 to the input 
# -- where the remainder of the number / 5 is 0
# -- where the remainder of  the number / 3 is 0
# put numbers that meet the previous condition in an array
# sum all the values of the array

def multisum(number)
  divisible_numbers = []
  (1..number).each do |num|
    if num % 5 == 0 || num % 3 == 0
      divisible_numbers << num
    end
  end
  divisible_numbers.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168


#6
puts "\n#6\n\n"
#input - am array of ints
# output -  a new array where each element is a sum of the ruuning total of the sum of elements at that index

# Rules
# - first index always returns itself
# - blank array is returned blank
# - ending array always returns the same amout of elements

# Algorithm
# - initialize a new array
# - for each element in the input
# - the new element is reassignned to the element at that index plus the element at the preceding index

def running_total(arr)
  sum = 0 
  arr.map { |num| sum += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

#7 TODO
puts "\n#7\n\n"
#input - string
#output - input string converted to an integer

# Rules
# - you cannot use Integer or to_i
# - leading + or - don't matter
# - assume all characters are numeric

# Algorithm 
# -- Without to_i or built in functions you will need a way to map the existing string to an integer
# -- set up a hash with the keys being string value and values being the integers
# -- iterate through the string and return the hash values
# -- you will need to multiply each returned value by a base 10 * the iteration to get the full number

def string_to_integer(str)
  numbers_hash = {'0'=> 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}
  digit = 0
  integer = 0 
  str.each_char do |char|
    integer = numbers_hash[char]
    integer *= 10
  end
  integer
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570


#8 TODO
puts "\n\n#8\n"
# input ->
# output ->
# Rules
# Alogorithm


#9 
puts "\n#9\n\n"
# inputs -> integer
# output ->  string
# Rules 
# -- You cannot use the to_s method
# -- method takes a positive integer or 0 and converts it into a string
# Alogorithm
# - initialize an empty string
# - with has that has the int as the key, and the str as the value
# -- iterate by dividing by 10s spot to find the remainder which will give access to the key 
# -- concatenate string value to the str 



def integer_to_string(int)
  str = ' '
  str_hash = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

  loop do
    int, remainder = int.divmod(10)
    str.prepend(str_hash[remainder])
    break if int == 0
  end
  str.strip
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

#10
puts "\n\n#10\n"
#input - integer
#output - string represetning integer value an + or - sign
#rules

#algorithm

def signed_integer_to_string(int)
  str = ''
  if int < 0
    str = '-' + integer_to_string(int.abs)
  elsif int == 0
    str = integer_to_string(int)
  else
    str = '+' + integer_to_string(int)
  end 
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'