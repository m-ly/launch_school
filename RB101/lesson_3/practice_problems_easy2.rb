# 1
puts "#1\n\n"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.key?("Spot")
puts ages.has_key?("Spot")
puts ages.include?("Spot")

#2 
puts "\n#2\n\n"

munsters_description = "The Munsters are creepy in a good way."

munsters = ''
munsters_description.each_char do |letter|
  if letter == letter.downcase
    munsters += letter.upcase
  elsif letter  == letter.upcase
    munsters += letter.downcase
  end
end
puts munsters

#puts munsters_description.swapcase
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase
  
#3 

puts "\n#3\n\n"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

puts ages.merge(additional_ages)

#4 

puts "\n#4\n\n"

advice = "Few things in life are as important as house training your pet dinosaur."
advice_array = advice.split
puts advice_array.include?("Dino")

#advice.match("Dino")

#5 

puts "\n#5\n\n"

p flintstones = %w(Fred, Barney, Wilma, Betty, BamBam, Pebbles)

#6 
puts "\n#6\n\n"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino")
p flintstones

puts "\n#7\n\n"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.push("Dino").push("Hoppy")

# 8
puts "\n#8\n\n"

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(..advice.index('house')-1)

puts advice


# 9 
puts "\n#9\n\n"

statement = "The Flintstones Rock!"

num_t = 0 
statement.each_char { |char| num_t +=1 if char == 't'}
puts num_t

#statement.count('t')

#10 
puts "\n#10\n\n"

title = "Flintstone Family Members"

puts title.center(40)