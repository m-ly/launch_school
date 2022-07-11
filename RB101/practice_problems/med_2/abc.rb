# input=> String
# output => true or false

#Goal => return true if the string can be constructed using each block only once with only one character from each block 

# rules
# Case does not matter

# approach
# Iterate each character in the input, and compare it to to the list of usable letters. Count each of the letters that is used,  if the count of any of the letters 
# is greater than one or a letter is re-used, return false, if the character is not included in usable letters, return false.

# algorithm
# create an empty array - used_blocks
# for each character in the string, if the uppercased - character is included as an element of the blocks list,  append the block to used_blocks
# 
# return true if the array used_blocks is the same as used_blocks with no duplicate characters


BLOCKS = [['B','O'], ['X', 'K'], ['D','Q'], ['C', 'P'], ['N', 'A'],  ['G', 'T'],  ['R', 'E'],  ['F', 'S'], ['J', 'W'],  ['H', 'U'], ['V', 'I'],  ['L', 'Y'], ['Z', 'M']]

def block_word?(str)
  used_blocks = []
  str.each_char do |char|
    BLOCKS.each do |block|
      if block.include?(char.upcase)
        used_blocks << block
      end
    end
  end
  used_blocks == used_blocks.uniq
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true


# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word(str)
#   up_str = str.upcase
#   BLOCKS.none? { |block| up_str.count(block) >= 2 }
# end