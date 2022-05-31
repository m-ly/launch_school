FACE_CARDS = %w( J Q K)

# creates a nested array of cards and respective suit
def initialize_deck
  cards = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  suit = %w(♠ ♥ ♦ ♣)
  all_cards = suit.product(cards)
end

def show_hand(hand)
  converted_cards = []
  hand.each do |card|
    converted_cards << card[0] + card[1]
  end
  converted_cards  
end

#input is an array - output is a copy of the array that has first element hidden
def show_computer_hand(hand)
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
def sum_hand(cards)
  totals = []
  cards.each do |card|
    value = card.pop
    case 
    when value == 'A'
      totals << 11
    when FACE_CARDS.include?(value)
      totals << 10
    else
      totals <<  value.to_i
    end
  end

  if totals.sum > 21 && totals.include?('A')
    totals.sum -= 10
  end
  totals.sum
end

# input is an array, and user input string  - output is nil or an array
def hit_again(cards)
  puts "Would you like to hit? (Y/N)"
  answer = gets.chomp.downcase
  if answer.start_with?('y')
    new_card = draw_card(cards)
  end
  p new_card[0]
end

# input is array the cards are summed and if the total is over 21 the method returns true
def bust?(cards)
  sum_hand(cards) > 21
end

#
def winner?()
end

##################### Main Loop ###############################
system 'clear'
active_deck = initialize_deck()

player_hand = initial_draw(active_deck)
computer_hand = initial_draw(active_deck)

puts "You are holding, #{show_hand(player_hand)}."
puts ""
puts "The computer is holding #{show_computer_hand(computer_hand)}." 
puts ""

loop do 
  if sum_hand(player_hand) == 21
    puts "You win!"
    break
  elsif sum_hand(computer_hand) == 21
    puts "The computer wins!"
    break
  else
    player_hand << hit_again(active_deck)
    p player_hand
  end
end



