#input - string
#output - a new string with all consecutive letter characters collapsed into a single character

# Algorithm
# Initialize a new empty collection string 
# iterate the string by each character until the size of the string -1
# -- if the char at a particular index == the character at the index + 1 
# .  - remove that character
# -- else
# .  - add the character to the collection string



def crunch(str)
  no_doubles = ''
  idx = 0
  while idx < str.size
    if str[idx] != str[idx + 1]
      no_doubles << str[idx]
    end
    idx += 1
  end
  p no_doubles
end



p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''