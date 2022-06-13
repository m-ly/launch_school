FACE_CARDS = %w( J Q K)

# creates a nested array of cards and respective suit
def initialize_deck
  cards = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  suit = %w(♠ ♥ ♦ ♣)
  suit.product(cards).shuffle!
end

#input is an array of 2 element arrays, output is each array mapped to a concatenated string 
def converted_cards(hand)
  hand.map { |card| card[0] + card[1] }
end


#input is an array - output is a copy of the array that has first element hidden
def hide_computer_hand(hand)
  comp_hand = converted_cards(hand)
  comp_hand[0] = "**"
  comp_hand
end

# takes an array and picks two random values from the array
def initial_draw(deck)
  hand = deck.pop(2)
  converted_cards(hand)
end

# input is an array - output is one random value from the array 
def draw_card(deck)
  card = deck.pop
end


# input is an array - output is the sum of the numberical value of the array 
# if the value is over 21 -> 10 is subtracted from the total
def sum_cards(hand)
  sum = 0
  p value = hand.map { |card| card[1]}
  value.each do |card|
    if card == 'A'
      sum += 11
    elsif FACE_CARDS.include?(card)
      sum += 10 
    else
      sum += card.to_i
    end
  end

  sum

  if value.include?('A') && > 21
    sum -= 10
  end
  
end


# input is an array, and user input string  - output boolean
def hit_again?()
  puts "Would you like to hit? (Y/N)"
end

# input is array the cards are summed and if the total is over 21 the method returns true
def bust?(cards)
  sum_cards(cards) > 21
end

#
def winner?()
end

#This takes  return of the  show_hand and  hide_hand fuctions and uses them as inputs to  return a string output to the screen
def show_both_hands(player, computer)
  puts ""
  puts "You are holding, #{converted_cards(player)}."
  puts "The computer is holding #{converted_cards(computer)}." 
  puts ""
end

def show_winner(player, computer)
  if sum_hand(player) == 21
    puts "You win!"
  elsif sum_hand(computer) == 21
    puts "The computer is holding #{converted_cards(computer_hand)}."
    puts "The computer wins!"
  end
end

##################### Main Loop ###############################
system 'clear'
game_on = true 
active_deck = initialize_deck()

player = initial_draw(active_deck)
computer = initial_draw(active_deck)

puts "The player is holding #{converted_cards(player)}"
puts "The computer is holding #{hide_computer_hand(player)}"

sum_cards(player)
sum_cards(computer)

loop do
  hit_again?()
  answer = gets.chomp.downcase
  if answer == 'n'
    break
  elsif answer == 'y'
    player << draw_card(active_deck)
    puts "You Hit! You're now holding #{converted_cards(player)}"
    
    if bust?(player)
      puts "You busted, you lose this round!"
      game_on = false
      break
    elsif sum_cards(player) == 21
      puts "BLACKJACK! You win!"
      game_on = false
      break
    else
      sum_cards(player)
    end

  else 
    puts "Please choose a valid selection"
  end
end

while game_on && sum_cards(computer) <= 17
  computer << draw_card(active_deck)
  puts "Computer Hit! The computer is now holding #{hide_computer_hand(computer)}."
 

  if bust?(computer)
    puts "Computer busted! Their loss is your gain! YOU WIN!"
    game_on = false
    break
  else
    sum_cards(computer)
    break
  end
end



while game_on
  show_both_hands(player, computer)
  if sum_cards(player) > sum_cards(computer)
    puts "You win!"
    game_on = false
  else
    puts "The computer wins!"
    game_on = false
  end
end


