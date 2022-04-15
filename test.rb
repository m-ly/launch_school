=begin
loop do
  puts 'This is the outer loop.'
  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'


iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  if iterations == 6
     break
  end
end



loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  if answer == 'yes'
    break
  end
end





say_hello = true
iter = 0

while say_hello
  puts 'Hello!'
  iter +=1 
  if iter = 5
    say_hello = false
  end
end


count = 0

while count < 5
  puts rand(100)
  count += 1
end




count = 1

until count == 11
  puts count
  count += 1
end



numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

numbers = [7, 9, 13, 25, 18]

until numbers.length == 0
  puts numbers.pop
end



numbers = [7, 9, 13, 25, 18]


until numbers.size == 0
  puts numbers.pop
end



for i in 1..100
  if i % 2 != 0 
    puts i
  end
end

(1..100).each do |i|
  puts i if (i % 3).zero?
end



friends = ['Sarah', 'John', 'Hannah', 'Dave']

friends.each do |person|
  puts "Hello, #{person}"
end

for friend in friends
  puts "Hello, #{friend}"
end


count = 1

loop do
  while count < 6
      if count % 2 != 0 
        puts "#{count} is odd!"
        count += 1
      else 
        puts "#{count} is even!"
        count += 1
      end
  end
end





loop do 
  number = rand(100)
  if number <= 10
    puts number
    break
  else
    puts number
  end
end



process_the_loop = [true, false].sample

if process_the_loop
  loop do 
    puts "The loop was processed"
    break
  end
else
  puts "The loop was not processed"
end


loop do 
  puts "What is 2 + 2?"
  answer = gets.chomp.to_i
  
  if answer == 4
    puts "Thats correct"!
    break
  end

  puts "Incorrect, try again"
end



numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.unshift(input)
  if numbers.size == 5
    break
  end
end
puts numbers



names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  if names.empty?
    break
  end
end

puts names



5.times do  |index|
  puts index
  if index == 2
    break
  end
end



number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number 
end



number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  
  puts "Breaking out of the loop!"
  break
end




def greeting(num)
  while num > 0
    puts 'Hello!'
    num -= 1
  end
end



number_of_greetings = 2
greeting(number_of_greetings)



puts "Type something here"
user_input = gets.chomp

puts user_input



puts "What is your age?"
age = gets.chomp.to_i
puts "You are #{age*12} months old"




question = "Do you want to print something? (y/n) "

loop do
  puts question
  answer = gets.chomp.downcase
  if answer == 'y'
    puts "something"
    break
  elsif answer == 'n'
    break
  end
end




answer = nil

loop do
  puts "How many output lines would you like? (Choose a number greater than 3)"
  answer = gets.chomp.to_i
  if answer < 3
    puts "You need to chose a number larger than 3"
  else
    while answer > 0 
      puts "Launch School is the best"
      answer -= 1
    end
  break
  end
end
  
count = 0

until count >= 3
  puts "How many output lines would you like (Choose a number greater than 3)"
  count = gets.to_i

  puts "The number needs to be greater than 3" if count < 3
end

count.times {puts "Launch School!"}




PASSWORD = "Password"
is_authenticated = false

while not is_authenticated
  puts "Enter your password"
  password = gets.chomp
  if password == PASSWORD
    puts "Welcome!"
    is_authenticated = true
  else
    puts "Incorrect Password"
  end
end


USER_DATA = {name: "Matt", password:"Hello" }
name = ""
password = ""


loop do
  puts "Enter User Name"
  name = gets.chomp
  puts "Enter Password"
  password = gets.chomp

  break if name == USER_DATA[:name] and password == USER_DATA[:password]
  puts "Authorization Failed"
end
puts "Welcome!"




def valid_number?(num_string)
  num_string.to_i.to_s == num_string
end

num_1 = ''
loop do
  puts "Please enter the numerator"
  num_1 = gets.chomp
  break if valid_number?(num_1)
  puts "Only integers are allowed"
end


num_2 = ''
loop do
  puts "Please enter the denominator"
  num_2 = gets.chomp
  if num_2 == '0'
    puts "Error, cannot divide by 0"
  else
    break if valid_number?(num_2)
    puts "Only integers are allowed"
  end
end
 
answer = num_1.to_i/num_2.to_i
puts  "#{num_1}  /  #{num_2} = #{answer}"



input_str = ''
number_of_lines = nil

loop do
  puts '>> How many output lines do you want? Enter a number >= 3 or Q to quit:'
  input_str = gets.chomp
  number_of_lines = input_str.to_i
  if input_str.upcase == "Q"
    break
  elsif number_of_lines <= 3
    puts ">> That's not enough lines."
  else
    while number_of_lines > 0
      puts 'Launch School is the best!'
      number_of_lines -= 1
    end
  end
end


def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end


num_1 = ''
num_2 = ''

loop do
  
  
  loop do
    puts "Enter a positive or negative integer"
    num_1 = gets.chomp
    break if valid_number?(num_1)
    puts "That isn't a valid input,number must not be 0"
  end

  
  loop do
    puts "Enter a 2nd positive or negative integer"
    num_2 = gets.chomp
    break if valid_number?(num_2)
    puts "That is not a valid input, number must not be 0 "
  end


  break if num_1.to_i.negative? or num_2.to_i.negative?
  puts "One of the inputs needs to be a negativer int."
end

sum = num_1.to_i + num_2.to_i
puts "#{num_1} + #{num_2} = #{sum}"




def print_me()
  puts "I'm printing from within the method!"
end

print_me 



def print_me()
  return "I'm printing the return value"
end 

puts print_me




def hello()
  return 'Hello'
end

def world()
  return 'World!'
end

def greet()
  puts hello + ' ' + world + '!'
end 

greet



def car(make, model)
  puts "#{make}, #{model}" 
end

car('Toyota', 'Corolla')



daylight = [true, false].sample

def time_of_day(bool)
  if bool == true
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end


time_of_day(daylight)



def dog(name)
 return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}"



def assign_name(name = "Bob")
  name
end

puts assign_name('Kevin') == "Kevin"
puts assign_name == "Bob"



def add(num1, num2)
  num1 + num2
end


def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2) == 4
puts add(5,4) == 9
puts multiply(add(2,2), add(5, 4)) == 30



names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']


def name(name_list)
  name_list.sample
end

def activity(activity_list)
  activity_list.sample
end 

def sentence(name, activity)
  "#{name} went #{activity} today!"
end 

puts sentence(name(names), activity(activities))



def meal()
  return "Breakfast"
end

puts meal



def meal()
  'Evening'
end

puts meal


def meal()
  return "Breakfast" # <-- function exits 
  'Evening'
end

puts meal



def meal
  puts "Breakfast"  # <-- is printed but not returned
  return "Dinner" # <-- is returned but only printed if called with puts
end

puts meal



def meal
  "Dinner"
  puts "Dinner" # <-- return value of puts is nil -> value is printed with p 
end

p meal



def meal
  return "Breakfast" # <- exits after return value given
  'Dinner'
  puts "Dinner"
end

puts meal



def count_sheep
  5.times do |sheep| 
    puts sheep # <- prints the int 0,1,2,3,4  then the times function returns t
  end            # the int (in this case 5 
end

puts count_sheep



def count_sheep
  5.times do |sheep| 
    puts sheep 
  end    
  10       #<- since 10 is the last line it is the implicit return of the program
end        # and replaces 5 as the return value
          # Implicit is a return that isn't called but is given because
          # it is the last executed line in the program
puts count_sheep


def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2 # <- if the counter is greater than 2 -->
      return # <- return/count || has no value so the program exits w/ nil 
    end
  end
end

p count_sheep


def tricky_number
  if true
    number = 1  #<-- initial assignmnebt and answer
  else 
    2
  end
end

puts tricky_number




sun = ['visible', 'hidden'].sample

puts "The sun is so bright" if sun == 'visible'
 

sun = ['visible', 'hidden'].sample

unless sun == 'visible'
  puts "The clouds are blocking the sun"
end



sun = ['visible', 'hidden'].sample

puts "The sun is so bright" if sun == "visible"
puts "The clouds are blocking the sun" unless sun == "visible"
  

boolean = [true, false].sample

puts "I'm true" if boolean == true
puts "I'm false" if boolean == false

#or

#Ternary Condition
<condition> ? <result if true> : <result if false>


boolean ? puts ("I'm true") : ("I'm false")



number = 7

if number
  puts "My favorite number is #{number}"
else
  puts "I need a new number"
end

#Prints "My favorit number is 7" because all expressions evaluate as true
# by default unless the condition is nil or false


stoplight = ['green', 'yellow', 'red'].sample

case stoplight 
when  'green'
  puts "Go!"
when 'yellow'
  puts "Slow Down"
else
  puts "Stop!"
end


#Use a case statement when comparing multiple values to a single case


stoplight = ['green', 'yellow', 'red'].sample

case stoplight 
if stoplight == 'green'
  puts "Go!"
elsif stoplight ==  'yellow'
  puts "Slow Down"
else
  puts "Stop!"
end



status = ['awake', 'tired'].sample

alert = if status == 'awake'
          "Be productive!"
        else
          "Get some sleep!"
        end

        puts alert




number = rand(10)

if number == 5
  puts "5 is a cool number"
else
  puts "Other numbers are cool too"
end


stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then  puts 'Go!'
when 'yellow' then  puts 'Slow down!'
else                puts 'Stop!'
end





empty_string = " "



puts "It's 12 o'clock"


name = "RoGer"

puts name.casecmp("Roger") == 0
puts name.casemp("Dave") == 0




name = 'Elizabeth'

puts "Hello, #{name}!"



first_name = 'John'
last_name = 'Doe'

full_name = first_name + " " + last_name
puts full_name



state = "TeXaS".capitalize

puts state


greeting = 'Hello!'

puts greeting.replace("Goodbye")




alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split(//)
or 
puts alphabet.split("")


words = ('car human elephant airplane')

words.split(" ").each do |word|
  puts word + "s"
end



colors = 'blue pink yellow orange'

puts colors.include?("yellow")
puts colors.include?("purple")



pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]
puts "I have a #{my_pet}"



pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets.pop(2)

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"




pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3].pop

puts my_pets




pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
my_pets.push(pets[1])

puts "I have a #{my_pets[0]} and a #{my_pets[1]}"


colors = ['red', 'yellow', 'purple', 'green']

colors.each do |color|
 puts "I'm the #{color}"
end





numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map{ |num| num * 2 }
p doubled_numbers


doubled_numbers = numbers.map  do |num|
                      num * 2
                    end 
p doubled_numbers


doubled_numbers = []
numbers.each do |num|
  doubled_numbers.append(num * 2)
end

p doubled_numbers



numbers = [5, 9, 21, 26, 39]

div_three = numbers.select{ |num| num % 3 == 0}

div_three  = numbers.each do |num|
               num % 3 == 0
             end

p div_three




[['Dave', 7], ['Miranda', 3], ['Jason', 11]]


favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

favorites = favorites.flatten

p favorites



array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2



car = {type: 'sedan',
       color: 'blue', 
       mileage: 80_000}

car[:year] = 2003

car.delete(:mileage)

puts car
puts car[:color]



numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |key, value|
  puts "A #{key} number is #{value}"
end


numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.values.map{ |value| value / 2 }
p half_numbers



numbers = {
  high:   100,
  medium: 50,
  low:    10
}

p numbers.select{ |key, value| value < 25 }



vehicles = {car: {type: 'sedan',
                   color: 'blue', 
                   year: 2003},

            truck: {type: 'pickup',
                     color: 'red',
                     year: 1998}
            }

puts vehicles



car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

p car.to_a




def find_first_nonzero_among(numbers) #<-- only looking for one arg in the first call multiple are given
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

#find_first_nonzero_among(0, 0, 1, 0, 2, 0) #<- too many arguements
find_first_nonzero_among(1) #<-- unable to use each to iterate integers convert to array to iterate



def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather



def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number.to_i)}!"



pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog].append('bowser')

puts pets[:dog]



numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers



def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'

  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'


colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i >= things.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end




def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0
=end


# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

chosen_class = player.merge(character_classes[input.to_sym])

puts 'Your character stats:'
puts chosen_class