#1 
puts "\n\n#1\n"
#input -> a floating point number that represents degree 0-360
#output -> a string that returns the angle in degrees/minutes/seconds
#Rules
# -  A degree °  has 60 minutes, while a minute '  has 60 seconds "
# use 2 digit numbers with leading 00s when formatting the minutes and seconds


#Algorithm
# initialize an empty collection str
# turn the number into a a float (in case it's entered as a int) and then into a string, and split on the . 
# for the elements
# - if the element is in the first index
# -- format it and append it to the return str
# - else if the element is the 2nd index
# -- convert the number back into an integer and multiple by  1/60 --> mins is the first index in tuple
# -- # if  seconds are 0, or don't exist from the float mod -- default to 00

DEGREE = "\xC2\xB0"
=begin
def dms(float_num)
  
end

p dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48") 
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
=end

#2 
puts "\n\n#2\n"
#input --> an array of strings
#output --> an array with vowels removed

#Rules
# need to account for lists of different element sizes

#Algorithm
# create a vowels array
# map used to create a new array
# iterate each element
# -- delete if element matches  vowels pattern


=begin
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
=end

#3
puts "\n\n#3\n"
#input -> an integer
#output ->  an integer of the index that matches the first time an integer that matches the length of the input is seen in the fib sequence

#Algorithm
# First need to solve the fibonacci seq
#  num + num  = answ 
#  answ + num 
