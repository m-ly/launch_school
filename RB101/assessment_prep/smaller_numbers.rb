# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.


# Input => An array of Numbers
# Output => An array of numbers 

# Goal => from an array of numbers return a new array that is populated by integers that are the count of how many numbers have a value less than the number being itereated on

# Rules
# -- only unique numbers should be counted for the return array

# Approach
# iterate the given array comparing the value of the current element to the unique digets in the array.  If the diget is less than the value return it to a new array

# Algorithm
# initialize a variable to represent and array the unique characters in the given array
# call map on the given array with parameter of current
#   intialize a count variable
# . for each of the characters in the unique value array
# .   if the character is less than current 
# .     count +=1


=begin

# Examples:
def smaller_numbers_than_current(arr)
  uniq_vals = arr.uniq
  
  arr.map  do |current|
    count = 0 
    uniq_vals.each do |val|
      if val < current
        count += 1
      end
    end
    count
  end
end

=end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".