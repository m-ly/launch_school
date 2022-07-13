# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# input -> an array of integers
# output --> an integer or nil

# Goal
# return the minimum sum of five consecitve integers in an array,
# if there are less than 5 consective integers return nil

# approach
# iterate the array finding all subarrays that are 5 integers long.  if there are not 5 ints return nil
# else sum the subarrays and return the sum that is the smallest value

# Algorithm
# return nil if subarray is less than 5 element
# else
# create an array that is populated by all the 5 element subarrays that can be created from the original array
# .  init an all subarry variable initialized to []
# .  init a variable to track where the count to 0
# .     until n + 4 is greater than or equal to size of the array
# .       append sub_arrays w/ slice the from n .. n+5
# .map to sum all the arrays
# .return the minimum element.

=begin
def find_subarrays(arr)
  sub_arrays = []
  first = 0

  loop do
    last = first + 4
    sub_arrays.append(arr[first..last])
    first += 1
    break if last >= arr.size
  end

  sub_arrays
end

# p find_subarrays([55, 2, 6, 5, 1, 2, 9, 3, 5, 100])

def minimum_sum(arr)
  if arr.size < 5
    p nil
  else
    all_subarrys = find_subarrays(arr)
    p all_subarrys.map!(&:sum).min
  end
end
=end
# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".
