#input --> a float value between 1 and 350==60
#output --> a string converted into a degree/minute/second representation of the float

#approach
# minutes = degrees_float_decimal * 60
# degrees = minutues_float_decimal * 60
# if the decimal places = 0 the value for the string at that spot == 00


#Algorithm
# split the float at the decimal saving both as variables

# assign to the variable angle to  numbers to the  left 
# assigne the variable minutes to the decimal and numbers to the right
#  if minutes is not equal to 00
#      minutes equals the numbers to the right * 60
#  split the number at the decimal again reassigning the variable minutes to the numbers to the left
#  initialize the variable seconds to the value of the number from the decimal to the right  * 60
# format as angle° + minutes' + seconds"



def dms(decimal_angle)
  
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")