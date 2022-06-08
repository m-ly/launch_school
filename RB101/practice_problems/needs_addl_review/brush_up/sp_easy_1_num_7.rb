#input -> positive integer, an optional parameter that switches the starting integer
#output -> a string of alternating 1s and 0s starting w/ 1


# Rules 
# unless the optional parameter is called, the number string always starts with 1 

#Algorithm
#intialize an empty string
# initialize a counter that equals 1
# call the loop method with the condition 'until counter equals the input integer'
#  - if the counter is odd 
# .  -- append '1' to the string
# .  else if the counter is even
#   -- append '0' to the string
# return the finished string

def stringy(int )
  string_num = ''
  counter = 0
  starting_num = '1'

  until counter == int
    if counter.even?
      string_num << starting_num
    else
      string_num << '0'
    end
    counter += 1
  end
  p string_num
end

# Tests 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'