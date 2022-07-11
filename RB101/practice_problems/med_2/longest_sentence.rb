#input -> a  text file
#output -> the longest sentence in the file based on the number of words, also output the number of words in the longest sentence

# approach
# open a file into the processor
# define what punctuation is --> ['.', '!', '?'] --> in this case it's only important to match on . 
# initialize a variable longest_sentence_count = to a value of 0
# initialize a variable longest_sentence with a value of ''
# intialize a variable sentences --> which is the string split on punctiation 
# initialize a new variable words --> this is each sentence split on spaces
# for each sentence count the words
#   if the count is larger than longest_sentence
# .   reassign longest_sentence_count to the value of the count
# .   reassign longest_sentence to the value of the longest iteration joined by spaces 
#return the longest sentence, and the number of words in the sentence


file = '4_score.txt'

def count_words(sentence)
  count = sentence.count
end

def longest_sentence(file)
  filedata = File.read(file).gsub("\n", " ")
  sentences = filedata.split(/[.\?!]/)
  sentences.map! do |sentence|
    sentence = sentence.split
  end
  
  count = 0 
  longest_idx = 0
  sentences.each_with_index do |sentence, idx|
    if count_words(sentence) > count
      count = count_words(sentence)
      longest_idx = idx
    end
  end
  p sentences[longest_idx].join(" ")  + '.'
  p count
end 

longest_sentence(file)
 



# Input -> a txt document
# Output -> two outputs: #1 integer with the number of words in the longest sentence #2 print the longest sentence

# Approach
# initialize a longest sentence variable that equals  = ' '
# initialize a spaces variable and initialize it as 0 
# Import the text file
# Find the sentences --> split by ( . ! ? )
# for each sentence count the number of spaces in the sentence 
#   if the number of spaces is larger than spaces
# .   longest sentence equals current sentence 
#     number of words = spaces + 1 



def longest_sentence(file)
  filedata = File.read(file).gsub("\n", " ")
  sentences = filedata.split(/[.\?!]/) 

  longest_sentence = ' '
  words_in_sentence = 1

  sentences.each do |sentence|
    words = 0
    
    sentence.each_char do |character|
      if character == ' '
        words += 1
      end
    end
    
    if words > words_in_sentence
      words_in_sentence += words
      longest_sentence = sentence
    end
  end
  p "#{longest_sentence} . Has #{words_in_sentence} words."
end

#longest_sentence('4_score.txt')