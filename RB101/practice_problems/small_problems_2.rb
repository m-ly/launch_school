#1 
puts "#1\n\n"
# input = string
# output = string with randome number and name string if given

# Rules
#1 age is between 20-200
#2 if name is not provided in the method call, the default name is "Teddy"

# Algorithm
# - optional name="Teddy"
# - age = random number between 20-200
# - prin2 #name is #age years old

def name_and_age(name='Teddy')
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

name_and_age("Fred")
name_and_age()

#2 
puts "\n#2\n\n"

# input = length, and width of room in meters
# output = area of room in 
  # 1 square meters, and 
  # 2 square feet - 1 sq meter == 10.7639 sqft

# rules
# - sq meters = length * width
# - sq feet = sq_meters * 10.7639
# - input does not need to be validated

# algorithm 
# - sq_meter = l * w
# - sq_feet =  sq_meters * 10.7639
# - print result

def area_of_room(length, width)
  square_meters = length * width
  square_feet = square_meters * 10.7639
  puts "The area of the room in square meters is #{square_meters}"
  puts "The are of the room in square feet is #{square_feet}"
end

area_of_room(6, 9)

#2
puts "\n#3\n\n"

#input - float of bill amount,  float of tip percentage
#output - float of tip amount 

# Rules
# - the program must display the amount of the tip
# - the program must show the amount of the final bill
#implied rules
# - the answer should be rounded to 2 numbers 
# - tip percentage should be entered as less thsm 100

# Algorithm 
#- get input for bill total
#- get input for tip percentage as an int
#  - convert in to float as a percent
#- tip_total = bill total * tip percentage
#- total_cost = bill total + tip_totak

puts "What is the bill amount?"
bill = gets.chomp.to_f
puts "What is the tip percentage? (Enter as a whole number that is less than 100)"
tip_percent = gets.chomp.to_f / 100

tip_total = bill * tip_percent
bill_with_tip = bill + tip_total

puts "The tip amount is $#{format("%.2f", tip_total)}."
puts "The total bill is $#{format("%.2f", bill_with_tip)}."

#3 
puts "\n#3\n\n"

#input = integer for age, integer for at what age the user wants to retire
#output = string with converted integers

# Rules 
# 

#Algorithm 
# current_age = get user age
# retire_age = get the age the user wants to retire
# years_left = retire_age - current age
# get current year
# retire_year = years_left + current year

puts "How old are you?"
current_age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i
years_left = retire_age - current_age

current_year = Time.now.year
retire_year = years_left + current_year

puts "It is #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_left} years to go!"

#4 
puts "\n#4\n\n"

#input - String
#output - string

#rules:
#1 if a user puts ! at the end of their response it matches the condition to send all uppercae tedt bqck to the user.

# Algorithm 
# - get user name
# if user name ends with ! 
#   - Capitalize all text 
# else return nomasl tex sentence

puts "What's your name?"
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.upcase}, WHY ARE WE YELLING?!"
else
  puts "Hello #{name}."
end

#5
puts "\n#5\n\n"

#input -none
#output: all odd numbers in range 1-99

# Rules
#for range 1-99 print all odd numbers must be on a seperate line

(1..99).each { |num| puts num if num.odd?}

#6
puts "\n#6\n\n"

# Rules
# Print all numbers 1-99 inclusive, to the console, with each number on a separate line

puts (1..99).select(&:even?)

#7 
puts "\n#7\n\n"
# input - integer 
# output - string

#Questions
# Does the nymber need to be whole?

# Rules 
# - the user number should be greater than 0
# - the sum/product will include both 1 and the user supplied number 

# Algorithm 
# get and save the a number with a value greater than one from the user
# create a range of 1 to the user number
# ask the user if the would like to add or multiply the numbers
# if the user chooses add
# -- iterate the range adding each subsequent number ending with the user number - return the sum
# if the user chooses multiply 
# -- iterate the range multiplying each subsequent number anf retun the product

def sum(rng_end)
  total = (0..rng_end).inject(:+)
  #total = 0
  #1.upto(rng_end) { |num| total += num}
  #total
end

def product(rng_end)
  total = (1..rng_end).inject(:*)
  #total = 1
  #1.upto(rng_end) { |num| total *= num}
  #total
end 

puts "Pick a whole number"
range_end = gets.chomp.to_i

loop do
  puts "Would you like the sum ('S') or product ('P') of the numbers?"
  choose_function = gets.downcase.chomp
  if choose_function == 's'
    puts "The sum of the numbers 1 through #{range_end} is #{sum(range_end)}."
    break
  elsif choose_function == 'p'
    puts "The product of the numbers 1 through #{range_end} is #{product(range_end)}."
    break
  else
    puts "Not a valid choice, please choose either 'S' or 'P'."
  end
end


