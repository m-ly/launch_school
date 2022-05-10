#1 
puts "#1\n\n"

if false
  greeting = "hello world"
end

greeting

#This will result in nothing happening since you haven't established or met conditions for the false condition
# When you initialize a local variable within an if block, even if that if block doesn’t get executed, the local variable is initialized to nil.

  
#2
puts "\n#2\n\n"

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

#This will output {a: "hi there"} since greetings[a:] is bound to the informal_greeting var and was mutated

#3 
puts "\n#3\n\n"

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Returns one, two, three -- this is because the variables are not mutated before  being called in the puts lines

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# still returns one, two, three --> function still re=assigns, but the initial objects are still bound to the original variable/values

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# returns two, three, one --> the function calls gsub! which mutates the original objects

#4
puts "\n#4\n\n"



def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end


