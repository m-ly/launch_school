#input -> an integer that is a year
# output  -> a string representation the century that the input year falls in 

#rules

# centuries start in the first year after the millenia change soo
  # 2000 -> 19th century
  # 2001 -> 20th century
# centuries are the equivalent of the year divided by 100 
  # if the trailing year is 1 or greater than century will be the number divided by 100 + 1
# centuries start at 1 --> if the year is 0 should that be included?
# the return value should include st, nd, rd, th  added to the end of the string
# 1st, 2nd, 3rd, 4th, 5th, 6th, 7th, 8th, 9th, 10th, ...
# [11th, 12th, 13th], ...
# 14th, 15th ...

# Algorigthm
# initialize a hash where the key s are the digits 1-13, and the values are the prhases st, nd,rd, 4th
# initialize a str to hold the century value
# Use divmod function to divide the year by 100, and return an array of the century -
# . if the last element in the array == 0 
# .    the century_value will == the the first element of our divmod return converted to a str
# . else the century_value will == the first element of our divmod return + 1 converted to a str
# if century value ends with a key in the hash
#   the century_value will be reassigned to equal the century_value << corresponding hash value

def century(int)
  suffix = {'11' => 'th', '12' => 'th', '13' => 'th', 
            '1' => 'st', '2' => 'nd', '3' => 'rd',
            '4'=> 'th', '5' => 'th', '6' => 'th',
            '7' => 'th', '8' => 'th', '9' => 'th',
            '0' => 'th'
             }

  millenia = int.divmod(100)
  century_value = millenia[0]

  if millenia[1] != 0
    century_value += 1
    century_value = century_value.to_s
  else
    century_value = century_value.to_s
  end
  
  suffix.keys.each do |digit|
    if century_value.end_with?(digit)
      century_value << suffix[digit]
    end
  end
  century_value
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'



#Also 

def century_suffix(century)
  # before anything checks to see if the remainder of century/100 is 11,12,13 if it does it returns 'th' and exits the function
  return 'th' if [11, 12, 13].include?(century % 100 )
  # the last digit is the remainder of century / 10 
  last_digit = century % 10
  # switch statement 
  case last_digit
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
  end
end

def century(year)
  # default value for the century
  century = year / 100 + 1
  # accounts for years ending in 0 due to the fact the the new named century starts at yr 01
  century -= 1 if year % 100 == 0
  # implicit return of the century integer converted to string, and then a call to the suffix method using century as an argument
  p century.to_s + century_suffix(century)
end

century(2000) == '20th'