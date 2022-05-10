list_of_words = ["this", "is", "a", "list", "of", "words"]

def combine_words(list_of_words)
  words = ''
  list_of_words.each do |word|
     words += word
  end
  words
end

#puts combine_words(list_of_words)



def every_other(list)
  odds_list = []
  list.each do |number|
    if list.index(number).even?
      odds_list << number
    end
  end
  odds_list
end


my_list = [1,2,3,4,5,6,7]

#puts every_other(my_list)

user_word = "aabaa"
search_letter = 'a'

def find_third(word, letter)
  count = 0
  index_count = 0
 

  word.char do |char|
    if char == letter
      count += 1
      if count == 3
        puts char[index_count]
      
      end
    end
  end

end

#find_third(user_word, search_letter)

def merge(a1, a2)
  a1.zip(a2)
end

puts merge([1,2,3], [4,5,6])