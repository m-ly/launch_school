#1
puts "\n\n#1\n"

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


#2 
puts "\n\n#2\n"
# input -> a string
# output -> a hash with three key objects: upper, lower, neither

# Algoritn
# set up hash with keys: upper, lower, neither
# for each character in the string
# - if the char equals its uppercase equivalent  -- uppercase e
# -- add one to upper value in the hash
# - if the char equals its lowercase equivalent
# -- add one to the lower value in hash
# - else 
# -- add one to the neither hash value



def letter_case_count(str)
  str
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


#3 
puts "\n\n#3\n"
# input --> single string argument
# output --> a new string with the first letter of each word capitalized, and all other letters lowercase

#Algorithrm
# split the string into an array
# for each element in the array capitalize the word
# join the string delimited by space

def word_cap(str)
  words = str.split
  p capitalized = words.map(&:capitalize).join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#4
puts "\n\n#4\n"
#input --> a string argument
#output -->  a new string with Case of the letter swapped upper->lower ; lower->upper

#Algorithm
# initialize a new collection string
# for each character in the string
#  - if the char equals uppercase equivalent 
#  -- downcase the character
#  -- add to new collection
#  - if the char equals lowercase equivalent
#  -- upcase the character 
#  -- add to new collection
#  -- 

def swapcase(str)
  swapped = ''
  str.each_char do |char|
    if char == char.upcase
      swapped << char.downcase
    elsif char == char.downcase
        swapped << char.upcase
    end
  end
  p swapped
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


#5
puts "\n\n#5\n"

#input -> String
#output -> string where every other letter (index[0]  is capitalized)
#Rules 
# Characters that are not letters remain the same, but are counted as characters in regards to switching cases

# Algorithm
# set up a variable to count intitialized at 0
# set up a new string collection to return
# for each character of the string
#  - if count % 2 == 0 
#     -- capitalize the character
#     -- add character to return string
#  - else
# .   -- lowercase the character 
# .   -- add character to return string
# .  iterate the counting variable by one
# return the collection string

def staggered_case(str)
  count = 0
  staggered = ""
  str.each_char do |char|
    if count % 2 == 0
      staggered << char.upcase
      count += 1
  
      staggered << char.downcase
      count += 1
    end
  end
  p staggered
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#6
puts"\n\n#6\n"
#input -> String
#output -> string where every other letter (index[0]  is capitalized)
#Rules
# - numbers are not counted for indexing 

#Algorithm

def staggered_case(str)
  count = 0
  staggered = ""
  str.each_char do |char|
    if char =~ (/^(a-zA-Z)/)
      next
    elsif
      count % 2 == 0
      staggered << char.upcase
      count += 1
    else
      staggered << char.downcase
      count += 1
    end
  end
  p staggered
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#7
puts "\n\n#7\n"
#input -> an array of numbers
#output  -> a float number (which is the product off all numbers in the array divided by size of array)
# Rules 
# -- given inmplicit return value in tests should the result be a string? or will a float suffice?

def show_multiplicative_average(ary)
  product = 1.to_f
  denominator = ary.size
  ary.each { |num| product *= num }
  format('%.3f', product / denominator)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


=begin
def show_multiplicative_average(array_of_num)
  average = array_of_num.inject(:*).to_f / array_of_num.size

  puts "The result is #{format('%.3f', average)}"
end
=end

#8 
puts "\n\n#8\n"

#input -> two equal sized arrays of integers
#output - > a new array with the product of elements of the same index 

# Algorithm
# zip the arrays into a new array
# map the subarrays to a new array
  # for each ele of the subarray inject to multiply each number in the tuple 

def multiply_list(arr1, arr2)
  multiplied = arr1.zip(arr2).map { |num| num.reduce(:*) }
end
  

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#9
puts "\n\n#9\n"
#input -> 2 arrays of integers
#output -> a single array that contains the product of all numbers that can be formed -- sorted smallest --> largest



def multiply_all_pairs(arr1, arr2)
  all_pairs = arr1.map do |num|
    arr2.map { |num2| num * num2}
  end
  p all_pairs.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

#10 
"\n\n#10\n"

#input -> a string of multiple words
#output -> a string of a single world which is the 2nd to last word in the inital string

# Algorithm
# - split the string into an array
# - return the word at the 2nd to last index

def penultimate(str)
  words = str.split 
  p words[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'