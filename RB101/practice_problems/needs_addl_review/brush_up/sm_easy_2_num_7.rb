#input --> a range of numbers
#output --> each number printed to the screen on a seperate line

(1..99).each do |num|
  puts num
end

#variation --> print only even numbers

(1..99).each do |num|
  puts num if num.even?
end