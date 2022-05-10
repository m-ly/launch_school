#1
puts "#1\n\n"
# input - an array of names
# output = hash with names in the array being the keys, and position being the value

# Algorithm
# - initialize a new hash
# - initialize a counter
# - create a loop that utilizes the counter to track position and also serve as the values for the hash


flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
counter = 0 

flintstones.each do |name|
  flintstones_hash[name] = counter
  counter += 1
end

puts flintstones_hash

#2
puts "\n#2\n\n"
#input - hash
#output -- sum of all the hash values as an integer

#Algorithm


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum_ages = 0
ages.each do |names, ages|
  sum_ages += ages
end

# ages.values.inject(:+) # => 6174

puts sum_ages

#3 
puts "\n#3\n\n"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if {|key, value|  value > 100}

puts ages

#4 
puts "\n#4\n\n"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

puts ages.values.min
puts ages.sort_by { |key, value | value}.first

#5
puts "\n#5\n\n"
#input array
#output index number of an element


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.index { |element| element.start_with?('Be')}

#6
puts "\n#6\n\n"
#input array
#output - initial array mutated so all names are only the 1st three characters


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.object_id
flintstones.map! { |name| name = name[0,3]}

p flintstones
puts flintstones.object_id

#7 
puts "\n#7\n\n"
#input - string
#output - hash with keys the letters in the string, and the values being the number of time each letter appears in the loop

#Rules
# Uppercase are counted seperate than lowercase
# spaces should not be counted

#Alogorithm
# - initialize a new hash
# - initialize a counter
# - iterate through the string and compare the letters to see if they exist in the hash
# - if the letters don't exist make a new hash entry with the letter being the key and the value being 1
# - if the letters exist, add one to the total value


statement = "The Flintstones Rock"
num_letters = {}

statement.each_char do  |char|
  if char.match(/^[[:alpha:]]+$/)
    if not num_letters.include?(char)
      num_letters[char] = 1
    else
      num_letters[char] += 1
    end
  end
end 

puts num_letters

#9
puts "\n#9\n\n"
#input - string
#output - String with all words Title Cased
#Algorithrm
# - Split the string at each space and turn into an array
# - Make the first letter in each object the capital version of itself
# - join the array into a string delimited by space and return the string

words = "the flintstones rock"

p words.split.map {|word| word.capitalize}.join(" ")



#10
puts "\n#10\n\n"
#input -> hash
#output -> hash with new key/value combo
#rules ->  kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+

#Algorithm
#- iterate the hash to get the age value from inside of the person and descriptor hashes
# -if age is 0-17 insert a new key/value of 'age_group'=> 'kid'
# -if age is 18-64 insert a new key/value of 'age_group' => 'adult'
# -if age is 64 - insert key/value of 'age_group' => 'senior'

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}



puts munsters