FACE_CARDS = %w( J Q K)

# creates a nested array of cards and respective suit
def initialize_deck
  cards = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  suit = %w(♠ ♥ ♦ ♣)
  all_cards = suit.product(cards)
end

#input is an array of 2 element arrays, output is each array mutated to a concatenated string 
def show_hand(hand)
  converted_cards = []
  hand.each do |card|
    converted_cards << card[0] + card[1]
  end
  converted_cards  
end

#input is an array - output is a copy of the array that has first element hidden
def hide_computer_hand(hand)
  comp_hand = show_hand(hand)
  comp_hand[0] = "**"
  comp_hand
end

# takes an array and picks two random values from the array
def initial_draw(deck)
  hand = deck.sample(2)
  show_hand(hand)
  hand
end

# input is an array - output is one random value from the array 
def draw_card(deck)
  card = []
  card << deck.sample
  show_hand(card)
  card
end


# input is an array - output is the sum of the numberical value of the array 
# if the value is over 21 -> 10 is subtracted from the total
def sum_cards(hand)
  totals = []
  sum = 0
  hand.each do |card|
    p card 
    case 
    when card[1] == 'A'
      sum += 11
    when FACE_CARDS.include?(card[1])
      sum += 10 
    else
      sum += card[1].to_i
    end
  end
  p sum
end

# input is an array, and user input string  - output boolean
def hit_again?(cards)
  puts "Would you like to hit? (Y/N)"
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

# input is array the cards are summed and if the total is over 21 the method returns true
def bust?(cards)
  sum_hand(cards) > 21
end

#
def winner?()
end

#This takes  return of the  show_hand and  hide_hand fuctions and uses them as inputs to  return a string output to the screen
def show_both_hands(player, computer)
  puts "You are holding, #{show_hand(player)}."
  puts ""
  puts "The computer is holding #{show_hand(computer)}." 
  puts ""
end

def show_winner(player, computer)
  if sum_hand(player) == 21
    puts "You win!"
  elsif sum_hand(computer) == 21
    puts "The computer is holding #{show_hand(computer_hand)}."
    puts "The computer wins!"
  end
end

##################### Main Loop ###############################
system 'clear'
active_deck = initialize_deck()

player = initial_draw(active_deck)
computer = initial_draw(active_deck)

show_both_hands(player, computer)
p player

p sum_hand(player)
p sum_hand(computer)

# Todo check if initial hands are a winner?



