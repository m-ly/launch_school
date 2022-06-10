#input an array
#output an array with 2 subarrays with the first 1/2 of elements in the 1st array and the 2nd 1/2 of elements in the 2nd array

# Edge cases - if the array is odd the middle element goes into the first array

# Algorithm
# intiialize a variable 'half' assigned to the value of the input / 2 
# -- call ceil method on that to account for decimals and make sure that the middle element is moved into the 1st array
# initialize 2 empty arrays:
# . -- 1st
#   -- 2nd
#  for each element of the input array
# -- if 'half' is odd and the index = 'half' - 1 (#account for array index starting at 0)
#  --- append the element in the first array
# -- if it's less than the half variable
#  --- append to the 1st array
# -- else append to 2nd array
# return the whole array

def halvsies(arr)
  half = (arr.size / 2.0).ceil
  first = []
  second = []
  arr.each.with_index do |ele, idx|
    if half.odd? && idx == half - 1
      first << ele
    elsif idx < half
      first << ele
    else 
      second << ele
    end
  end
  p whole = [first, second]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]


# on lines 1 - lines 6 you define the halvsies function passing an array object as the argument
# on line2 initialize a variable to find the middle of the arr with the value equalinng the size of the arry divided by 2
#    -- call the ceil method on the value of middle to account for arrays with an odd number of values to 
# .     place the value in the first array
# on line 3 initialize the first_half array which is assigned the value of the sliced method called on the input array from 0 --> middle
# on line 4 intiialize the second_half array which is assigned the value of the slice method called on the input array from middle --> end
# on line 5 the function returns an array with the elements being first_half and second_half

def halvsies(arr)
  middle = (arr.size / 2 ).ceil
  first_half = arr[0, middle]
  second_half = arr[middle.. ]
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]