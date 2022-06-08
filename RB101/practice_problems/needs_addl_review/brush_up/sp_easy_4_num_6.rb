#input -> An array
#output -> A new array with the same number of elements, but each element is a sum of the running total from the original array


#Algorithm
# initialize the running sum variable with a value of 0
# call map on the input array, for each element the return is the running sum + the element
# assign the map variable to a new name and return it. 


def running_total(arr)
  sum = 0
  p totals = arr.map { |num| sum += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []