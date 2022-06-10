# input - an arry of integers
# output - an integer, which is the element in the array that is not unique

#Approach
# intialize an empty hash
# itereate through each element 
#   if the element doesn't exist 
#     -append it to the hash as a key with a value of 1
#   else
#     -- reassign the value of the key to +=1 
# . end if
# end loop
# select by value any value over 1 and return


def find_dup(list)
  numbers = {}
  list.each do |num|
    if !numbers.has_key?(num)
      numbers[num] = 1
    else
      numbers[num] += 1 
    end
  end
  p numbers.key(2)
end

#shorter way to write this
def find_dup(list)
  digits = Hash.new(0)
  list.each { |element| digits[element] += 1}
  digits.key(2)
end

find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73