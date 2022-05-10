'''input => user input string, number
   output => user input printed the (number) of times'''

def repeat(user_input, number)
  number.times  { puts user_input }
end

#repeat('hello', 3)

'''input => int
   output => return true if int is odd
'''

def is_odd?(number)
  number % 2 != 0 ? 'true'  : 'false'
end

#puts is_odd?(22)

'''input => string of numbers
   output => list of the numbers with each number seperated

   tests
     make_arr(1234) = [1,2,3,4]
     make_arr(1) = [1]
'''

def make_arr(number)
  p list = number.to_s.split(//).map{|char| char.to_i}
end

# make_arr(1234)

"""iterate through a list of strings and count the number of occurances of each word in the list
   input ==> list of string
   output ==> individual string, number of times the string is in the list

   tests:
   vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]   car => 4  truck =>3 SUV=> 1  mc => 2

  data => lists, dictionary

  algo:   for each item in list 
             check if the item is item_dictionary:
                if it is add + 1 to the counter
                else add the item to the dictionary and add +1 to the counter
"""

def count_occurances(user_data)
  counted_hash = {}
  key = user_data.each { |new_key| counted_hash[new_key] = 0 }
  user_data.each do |key|
    if user_data.include?(key)
      counted_hash[key] += 1
    end
  end
  p counted_hash
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# count_occurances(vehicles)