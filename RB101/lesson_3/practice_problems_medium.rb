#1

puts "#1 \n\n"

my_string = 'The Flintstones Rock!'
tab_string = "  "

n = 0
10.times do
  alt_tab = tab_string * n
  puts alt_tab + my_string
  n += 1
end


# 10.times { |number| puts " " * number + "The Flintstones Rock!"}

# 2 

puts "\n#2\n\n"

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{(40 + 2)}"
#the reason for the error is that you the statement is trying to add a string and integer together -- both must be the same type before calling puts on it

# 3
puts "\n#3\n\n"

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end

puts factors(10)
#number % divisor == 0 means that the number does not return a remainder, thus making it a factor of the number
# second to last line returns a list of the values when the loop has completed

#4
puts "\n#4\n\n"

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# << and + are different  << mutates the caller while  = is for assignment, and using + creats a new object that is referenced by the old variable name

#5 
puts "\n#5\n\n"

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# limit was outside the scope of the original function -- moving it into the scope will resolve the issue.

#6 
puts "\n#6\n\n"

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# Output will be 34 -- Answer is not reassigned until after - 8 is performed

#7
puts "\n#7\n\n"

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

p mess_with_demographics(munsters)

# This will change the value of the objects contained in the hash, so that the next time the has is called the value will be the mutated objects

#8
puts "\n#8\n\n"

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")


#--> Rock --> Paper -- > Paper 

#9
puts "\n#9\n\n"


def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)

#--> returns nos. Since bar(foo) is bar(yes) 