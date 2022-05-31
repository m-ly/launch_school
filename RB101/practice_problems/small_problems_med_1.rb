#1
puts "#1\n"
#input --> an array
#output --> a new array that moves the first element in the array to last element

#rules
# - the original array should remain unmodified 

# Alogrithm
# find the first digit in the array and save it as a variable
# save the remainder of the array as another variable 
# the rotated arr equals the  sliced array plus the first digit variable

def rotate_array(arr)
  last_char = arr[0]
  truncated_arr = arr[1..-1]
  rotated = truncated_arr << last_char
end

def rotate_string(str)
  rotate_array(str.split(//)).join
end

def rotate_integer(int)
  num_str = int.to_s
  p rotate_array(num_str.split(//)).join.to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

#2
puts "\n\n#2\n"
# input --> integer and n number of digits to rotate
# output --> integer that has been rotated n number of digits

#rules
# the number (n digits) is inverse of where the number will be chopped and put back together from 

# algorithm
# convert the integer to a string, and then split it into an array
# since the rotation is only done on the trailing end of the array counting back index spots from where the n digit variable is set
# set up a leading character variable from index 0 through the (- n index digit minus one)
# set up a trailing characters variable from the -n digit index through the last digit in the array
# concatenate the leading characters and trailing characters, flatten the array, join it, and convert back to integer

def rotate_rightmost_digits(number, idx)
  all_nums = number.to_s.split(//)
  leading_chars = all_nums[0..-idx-1]
  trailing_chars = all_nums[-idx..-1]
  (leading_chars << rotate_array(trailing_chars)).flatten.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

#3
puts "\n\n#3\n"
#input --> an integer
#output --> an integer 

#Rules
# no more than 1 zero in a row
# every iteration of the program moves one additioal number space to the right and adds that number as the last element in the array
#leading 0 will be dropped  

# Examples: 
#  735291    6 = length of the array 
# 3 52917    5 
# 32 9175    4
# 321 759    3
# 3215 97    2 
# 32157 9    1

# The pattern is we rotate the last n digits, where n begins at the number of
# digits in the number and decreases by 1 until there are no more digits to
# rotate. 

#Algorithm
# Convert the number by converting to a string, and then splitting it
# initialized an index varable to be the size of the string
# while the index is greater or equal to 2 
# . -- the number is iterated on  and reassigned by calling righmost digits fuction  with the aguements of the current number and index
#   -- subtract 1 from the index
# return the number


def max_rotation(number)
  index = number.to_s.size
  while index >= 2
    number = rotate_rightmost_digits(number, index)
    index -= 1
  end
  p number
end

p max_rotation(735291) == 321579 #352917 => 3 29175 => 32 1759 => 321 759 => 3215 97 => 32157 9 
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped #051 => 15 (end)
p max_rotation(8_703_529_146) == 7_321_609_845 #


#4 
puts "\n\n#4\n"
# input --> integer representing the total number of switches
# output --> array that represents the position of the lights that are on after n number repititions

# Rules 
# the loop starts over on the first light which after it has been turned on will stay on
# every subsequent loop past that, starting at the switch that is the equivelant of number of the loop
# the switch and every multiple of the switch is toggled to its alternate position
# the toggle trigger is any element of the array that the divmod of the round == 0

# ex: n = 5
# round   Switchtes
#  1      [ x, x, x, x, x] all on
#  2      [ x, _, x, _, x] starting with switch 2 all multiples of 2 are toggled) 
#  3      [ x, _, _, _, x] starting with switch 3 all multiples of 3 are toggled)
#  4      [ x, _, _, x, x] starting with switch 4 all multiples of 4 are toggled)
#  5      [ x, _, _, x, _] starting with switch 5 all multiples of 5 are toggled)

# Algorithm 
# all elements in the array will have a on || or off state this can be tracked with true (for on) and false for off
# initializa an array with n number of switches  with the value of all being true (round 1)
# 
# from 2 upto the n value: start a loop (initializing a counting variable)
#   - map an array, also tracking by index tracking the on/off status and index
#   -- if the divmod of the (switch location (idx) + 1) by round  == 0 
#     -- toggle the switch
# remap switches with index  
#   -- if the element is true, map the value of the index +1 
#   -- call compact on the switches to remove 'nil' values




def lights(num_switch)
  switches = Array.new(num_switch, true) 
  2.upto(num_switch) do |round|
    switches = switches.map.with_index do |on, idx|
      (1 + idx ) % round == 0 ? !on : on
    end
  end
  switches.map!.with_index do |ele, idx|
    idx + 1 if ele == true
  end 
  p switches.compact
end



lights(5)
lights(10)


#5 
puts "\n\n#5\n"
#input --> an integer (n)
#output --> a drawing of a diamond  where n is the value of a 4 pointed (nxn) grid 

#rules 
# n must be an odd integer
# the middle is n/5 
# while n less than middle the number of stars 
#   for each row is incremented as -> row = 1, row +=2
# while n is greater than the middle num of stars for each row = 
#  for the number of * in the row -=2  -> row = 1


