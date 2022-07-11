#input a string of numbers symbols and lettere
#output - a hash 

# Goal: Return a hash with the percentage of lowercase letters, uppercase letters, and other

# Approach 
# iterate each character of the string and count the case of the characther adding it to the corresponding hash. sum the total of call characters
# find the percentage of each hash total 

# Algorithm

p '1'.upcase(:ascii)

letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }