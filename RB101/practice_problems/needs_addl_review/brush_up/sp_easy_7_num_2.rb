puts "\n\n#2\n"
# input -> a string
# output -> a hash with three key objects: upper, lower, neither

# Algoritm
# set up hash with keys: upper, lower, neither
# for each character in the string
# - if the char equals its uppercase equivalent  *set a a range for comparison!
# -- add one to upper value in the hash
# - if the char equals its lowercase equivalent * set up a range for comparison!
# -- add one to the lower value in hash
# - else 
# -- add one to the neither hash value


=begin
def letter_case_count(str)
  counts = {lowercase: 0, uppercase: 0, neither: 0}
  str.each_char do |char|
    if ('a'..'z').include?(char)
      counts[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts 
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

