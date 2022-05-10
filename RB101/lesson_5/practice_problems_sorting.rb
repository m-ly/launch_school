#1
puts "#1\n\n"

#input arr
#output initial array sorted

arr = ['10', '11', '9', '7', '8']

arr.sort do |a,b|
  b.to_i <=> a.to_i
end

p arr

#2
puts "\n#2\n\n"

#input hash
#output hash sorted by date earliest to latest

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |book|
  book[:published]
end

puts books


#3 
puts "\n\n#3\n"

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
puts arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
puts arr2[1][:third][0]
arr3 = [['abc'], ['def'], {third: ['ghi']}]
puts arr3[2][:third][0][0]
hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
puts hsh1['b'][1]
hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
puts hsh2[:third].key(0)


#4
puts "\n\n#4\n"
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
p arr1
arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4
p arr2
hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4
puts hsh1
hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
puts hsh2

#5
puts "\n\n#5\n"

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0
munsters.each_value do |values|
  total_male_age += values['age'] if values['gender'] == 'male'
end

puts total_male_age

#6
puts "\n\n#6\n"

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, characteristic|
  puts "#{name} is a #{characteristic["age"]} year old #{characteristic['gender']}." 
end 
  
#7
puts "\n\n#7\n"

a = 2
b = [5, 8]
arr = [a, b] # => [2, [5, 8]]

arr[0] += 2 # => [4, [5, 8]]
arr[1][0] -= a #= [4, [3, 8]]
p arr

#8
puts "\n\n#8\n"
#output - for each string, print the vowels in the string to the consol

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = [ 'a', 'e', 'i', 'o', 'u']
vowel_str = ''
hsh.each do |key, value|
  value.each do |ele|
    ele.each_char do |char|
      if vowels.include?(char)
        vowel_str += char
      end
    end
  end
end

puts vowel_str


#9
puts "\n#9\n\n"

#output - sort each indivual array by descending alpha or numerical order

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted_arr = arr.map do |sub|
  sub.sort do |a, b|
    b <=> a
  end
end

p sorted_arr

#10
puts "\n\n#10\n"
#output -> a new array w/ each int in the array incremented by 1

inc_arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |dict|
  dict.each do |key, value|
    dict[key] += 1
  end
end

p inc_arr


#11 
puts "\n\n#11\n"
#output --> return a new array w/ only multiples of 3


arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |ele|
  ele.select { |num| num % 3 == 0 }
end

p new_arr

#12
puts "\n\n#12\n"
#output --> return a hash where the key is the first item in each array and the value is the 2nd item

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hsh = arr.each_with_object({}) do |ele, dict|
  dict[ele[0]] = ele[1]
end

p hsh

#13  TODO
puts "\n\n#13\n"
#output -> a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.
arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

sorted = arr.sort_by do |sub_arr|
  sub_arr.select { |num| num.odd? }
end

p sorted

# sort by sorts the object in place dictated by the block --  This block is say sort by odds...

#14 
puts "\n\n#14\n"

#return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

fruit_hsh = []
hsh.map do |name, descriptors|
  descriptors.each do | key, value |
    if key == :colors
      value.each do |color|
       fruit_hsh << color.upcase
      end
    elsif key == :size
      fruit_hsh << value.capitalize
    end
  end
end
p fruit_hsh


#15
puts "\n\n#15\n"

#output -> 