#1
puts "\n\n#1\n"
#input -->  string
# output a sum of the ascii  values for each character in the string

# able to string.ord

# algorithm
# - convert the string to an array seperated by character
# - for each character in the arry map the ord value
# - sum the array

def ascii_value(str)
  arr = str.split(//)
  ord_arr = arr.map {|char| char.ord}
  ord_arr.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

#2 
puts "\n\n#2\n"
#input ->  a positive or negative integer
#ouput -> a string formatted as military time

# Rules
#- #the integer represents minutes and is the difference in minutes between midnight, and the time  
#- unable to use Date/or Time module
#- There are 1440 minutes in a day
#- using divmod you can use the first digit as the hour, and the remainder as the minutes
#

#Algorithm 
# for any time 1440 or greater  modulo 24 to find any remainder of over 24 hours
# -- one day time is 1439 minutes (1440 represent 0000 so it's considered a new day)
#   - use divmod to get hours and minutes
#         hours = divmod[0]
#         minutes = divmod[1]
#  -- format the  divmod as a military time  string
#  -- if the number is single digit a 0 will need to be added to the first digit

def time_of_day(int)
  time =  int.divmod(60) 
  hour = time[0] % 24
  min = time[1]
  time_str = "#{"%02d" % hour}:#{"%02d" % min}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

=begin
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end
=end

#3 
puts "\n\n#3\n"
# input  -> str
# outut --> integer that represents the difference of the time before or after midnight

# Rules
# - no date/time module to be used
# - for hour conversion ==> 60 * hour
# - account for 2400 being == 0000

#algorithm
# for after midnight
# -- split the times string at : 
# -- turn each element of the times string to integers
# -- hours will equal the 1st element * 60 
# -- for before midnight
# -- this is the inverse of after midnight subtract from 1440 for the answer
# -- will need to account for 1440 returning 2400 which is the same value as 0

def after_midnight(str)
  times = str.split(/:/)
  hours = 0
  mins = times[1].to_i
  if times[0] != 24 && mins != 0
    hours = times[0].to_i * 60
  end
  num_of_minutes = hours + mins
end

#This is a much more elegant and readable solution
=begin
def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end
=end

def before_midnight(str)
  minutes = 1440 - after_midnight(str)
  if minutes == 1440
    minutes = 0
  end
  minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0


#4
puts "\n\n#4\n"
#input --> str
#output --> str with first and last letters of every word in the strings swapped

# Rules
# every word contains at least one letter, and that the  string will always contain at 
# least one word. You may also assume that each string contains nothing but words and spaces

# algorithm
# - create an array where you split each word into the string into it's onwn element
# -- for each word in the array 
# --  find the length of each word 
# --  assign the first letter  to the first spot
# --  assign the last letter to the last spot
# -- join the array into a return string

def swap(str)
  words_ary = str.split
  words_ary.each do |word|
    word[0], word[-1] = word[-1], word[0] #you can multiple assign at the same time!
  end
  return_str = words_ary.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'


#5 
puts "\n\n#5\n"
#input --> str
#output --> string with any nonalphanumber characters replaced with a space

#Rules
# - if there are multiple special characters, only one  space should return one space
# - re to strip any non matching alphanumberic is  (/[[:alnum:]]/)

#Alogorithm
# - gsub with a re match

def cleanup(str)
  p new_str = str.gsub(/[^a-zA-Z0-9]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '

#6
puts "\n\n#6\n"
#input = str
#output -> hash with count of the number of words of different sizes

#rules
# Words consist of any string of characters that do not include a space.

# algorithm
# initialize the hash
# split the string into an array 
# iterate the array to find the size of all the words in the str
#    - key is the size of the word
#    - value is the number of times the key has appeared
# -- if key doesn't yet exist initialize it into the hash with a value of one
# -- else add one to the value

def word_sizes(str)
  word_count = Hash.new(0) # => initializes your new hash keys with an intial value of 0
  ary = str.split
  ary.each do |ele|
   word_count[ele.size] += 1
  end
  word_count 
end
  

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

#7
puts "\n\n#7\n"
#input -> string
#output ->  hash with count of number of words of different sizes

#Rules
# non alphanumberic numbers do not count towards word size
# regex match on /[a-zA-z]/

#Algorithm
# initialize a hash
# initialize a counter with a starting number of 0 
# split the string into an array with each word being an element
# for each word in the string
# - for each character in the word
# -- if the re match on /[a-zA-z]/ increment the counter by one
# if the counter is not a key in the hash
# -- set counter value as the key to the hash with intial value of one
# else
# -- increemnt the value by one

def word_sizes(str)
  count = Hash.new(0)
  words_ary = str.split
  words_ary.each do |word|
    counter = 0 
    word.each_char do |char|
      if (/[a-zA-Z]/).match(char)
        counter += 1
      end
    end
  count[counter] += 1
  end
  count
end

=begin
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end
=end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

#8
puts "\n\n#8\n"

#input -> an array of integers between 0-19
#output -> an array of the integers sorted by their english word equivelant for each  number:
# - zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve,thirteen, 
#   thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen


#Rules

#Alogorithm -> 
  # set up an a collection of the numbered words 
  # sort by the number mapped to the index of the number word


=begin

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
=end

#9
puts"\n\n#9\n"
#input -> a string
#outsput - a new string with any consecutive  repeated character deleted so only one remains.

#Algorithm
# set up an index counter
# iterate the string and each character to the character to the right
# -- if the char matches the char to the right --> delete it
# iterate the index counter by one
# return the mutated string

=begin
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
=end

#10
puts "\n\n#10\n"
#input => a string
#output -> string inside of a box

# Rules
# length of the box should be length of string + 2?
# height of the box should be 3 tics (5 total rows)
# the input will not excedd the view area
# line 1 and the last line for heght is 3

#Algorithm
#  len = str.size + 2
#  print "+ len .times('-')+"

def print_in_the_box(str)
  len = '+' + ('-' * (str.size + 2)) + '+'
  interior = '|' + ( " " * (str.size + 2)) + '|'
  text_block  = '| ' +  str + ' |'
  puts len
  puts interior
  puts text_block
  puts interior
  puts len
end

p print_in_the_box('')

#11
puts "\n\n#11\n"
#input
#output 

#rules
#algorithm 

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

#The return object will be different --> str -> ary (a new obj --> object is then reversed in place --> join  creats a new str