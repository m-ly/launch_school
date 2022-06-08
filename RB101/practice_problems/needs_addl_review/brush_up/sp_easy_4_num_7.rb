#input -> A string representing a numerical value
#output -> the integer representation of the string value

#Rules
# You may not use to_i

#Approach
#this is transformation so using map to convert a string value to an integer value could help
#You need to account for how many zeros are in the integer at any given string location

#Algorithm
# initialize a has with key of string representaton of the number and value being the integer
# intialize a 'totals' variable assigned to the integer 0 
# split the string into an array 
# initialize a counter 
# until the count is the same as the length of the string
# shift the first number from the string
# for each iteration the value will equal equal totals * 10  + the convertec integer  * 0 + 4 -> 4 * 10 + 3 --> 43 * 10 + 2 --> 432 * 10 + 1
# return totals 


NUMBERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, 
            '6' => 6, '7' => 7, '8' => 8, '9' => 9 }


def string_to_integer(str)
  totals = 0 
  digits = str.split(//)
  count = 0 
  until count == str.size 
    first_number = digits.shift
    totals = totals * 10 + NUMBERS[first_number] 
    count += 1
  end
  totals
end



string_to_integer('4321') == 4321
string_to_integer('570') == 570

#Algorithm 
# initilaizae a numbers hash 
# initialize a variable digits that creates a new array with the string values mapped to their integer equivelant
# initialize a variable assigned to the value of 0 
# iterate digits and for each element in digits value = value * 10 + the current element
# return the value 

def string_to_integer(str)
  digits = str.chars.map { |char| NUMBERS[char] }

  value = 0
  digits.each { |digit| value = value * 10 + digit }
  value
end

string_to_integer('4321') == 4321
string_to_integer('570') == 570


#input --> Str
#output --> integer with negative sign (if necessary)

#Algorithm 
# split the string to check the first digit
# if the first digit is a sign + / -  the string conversion menhod can be called on splice of [1..]
# else call string conversion on the entire string


def string_to_signed_integer(str)
  first =  str[0]
  if str[0] == '-'
    -string_to_integer(str[1..])
  elsif str[0] == '+'
    string_to_integer(str[1..])
  else
    string_to_integer(str)
  end
end




p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100