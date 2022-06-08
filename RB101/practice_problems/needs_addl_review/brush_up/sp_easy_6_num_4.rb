#input -- an array
#output -- a mutated version of the input array that has all elements reversed. 

# Rules
# if the element is another collection the inner collection is not reversed

# Some practice with dual assignment and using one of the with_ methodss
# Algorithm
# call map in place on the array and with index on the map fucntion to create a map_with_index fumctionality
# .  -- pass the block with arguements element, index 
#    -- map each element as a sub array of the element and the size of the array minus the index value
# call sort in place on the array passing the the index value (or subarray[1] as the value to sort by 
# call map in place one last time, passing each subarray and returning the first value of that array 

def list_reverse!(arr)
  arr.map!.with_index  { |ele, idx| [ele, arr.size - idx ]}
  arr.sort! { |a, b|  a[1] <=> b[1]}
  arr.map! { |ele| ele[0] }
end


# Algorithm
# intialize a temporary holding array
# begin loop for the length of the array
# . -- pop each element of the array and append it to the temporary holding array
# end loop
# prepend(unshift) the temporary arr into the original array object
# flatten the array


def list_reverse!(arr)
  temp = []
  arr.size.times do |ele|
    temp << arr.pop
  end
   arr.unshift(temp).flatten
end


list = [1, 2, 3, 4]
list_reverse!(list)


list = %w(a b e d c)
list_reverse!(list) == ["c", "d", "e", "b", "a"] # true


list = ['abc']
list_reverse!(list) == ["abc"] # true


list = []
list_reverse!(list) == [] # true


# explore -- why isn't each working here? 