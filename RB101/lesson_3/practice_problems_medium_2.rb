#1 
puts "#1\n\n"

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# a = c  - B is it's own object ID

#2
puts "\n#3\n\n"

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# all object ids are the same since a/b are immutable integer an c is refernced to a


#3
puts "\n#3\n\n"

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#string --> pumpkins since the original object was not mutated or re-assigned , array --> [pumpkins, rutabaga] since the original container onject was mutated with <<

#4
puts "\n#4\n\n"

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#-->string == pumpkinsrutabaga the object was mutated and returned --> array == ["pumpkins"] since the objects is reassigned, not mutated in the function

#5
puts "\n#5\n\n"

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# no mutation just reassignment then the fuction is called and desired variables were also reassigned to retun the correct values

#6
puts "\n#6\n\n"

def color_valid(color)
  if color == "blue" || color == "green"
end

puts color_valid("red")