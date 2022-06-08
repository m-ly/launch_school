#input --> an array of strs
#output --> an array of str with aieou removed

#Rules 
# the words are nested inside an array, in order to iterate you'll have to first iterate through each word
# then iterate each character in every word
# Be mindful that there are seperate words inside the array, if you only iterate once, it will split the array into strings

# algorithm
# 


def remove_vowels(arr)
  arr.each do |word|
    word.gsub!(/[aeiouAEIOU]/, '')
  end
  p arr
end



VOWELS = 'aeiouAEIOU'

def remove_vowels(arr)
  p removed = arr.map { |word| word.delete(VOWELS) }
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
