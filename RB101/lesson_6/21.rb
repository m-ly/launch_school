VALUE = %w(3 4 5 6 7 8 9 10 J Q K A)

SUIT = %w(♠ ♥ ♦ ♣)
FACE_CARDS = %w( J Q K)


def prompt(str)
  puts "=> #{str}"
end

# creates a nested array of cards and respective suit
def initialize_deck
  SUIT.product(VALUE).shuffle!
end


#input is an array of 2 element arrays, output is each array mapped to a concatenated string 
def converted_cards(hand)
  hand.map{ |card| card[0] + card[1]}
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
end

# input is an array - output is one random value from the array 
def draw_card(deck)
  card = deck.pop
end

# input is an array of subarrays, output is the element at index 1
def card_values(hand)
  hand.map { |card| card[1] }
end

# input is an array - output is the sum of the numberical value of the array 
# if the value is over 21 -> 10 is subtracted from the total
def sum_cards(hand)
  sum = 0
  values = card_values(hand)
  values.each do |card|
    if card == 'A'
      sum += 11
    elsif FACE_CARDS.include?(card)
      sum += 10 
    else
      sum += card.to_i
    end
  end

  if sum > 21
    values.select { |aces| aces == 'A'}.size.times { sum -= 10 }
  end
 
  sum
end

# input is an array, and user input string  - output boolean
def hit_again?()
  puts "\n\n =>Would you like to hit? (Y/N)"
end



# input is an array of cards # output is a boolean true or false letting us know if someone hit 21
def game_over?(cards)
  cards >= 21
end

#This takes  return of the  show_hand and  hide_hand fuctions and uses them as inputs to  return a string output to the screen
def show_both_hands(player, computer)
  puts ""
  prompt("You are holding, #{converted_cards(player)}.")
  prompt("The computer is holding #{converted_cards(computer)}." )
  puts ""
end


##################### Main Loop ###############################
system 'clear'
game_on = true 
active_deck = initialize_deck

player = initial_draw(active_deck)
computer = initial_draw(active_deck)

player_vals = card_values(player)
computer_vals = card_values(computer)

sum_cards(player_vals)
sum_cards(computer_vals)

loop do
  prompt("You are holding #{converted_cards(player)}.")
  prompt("The computer is holding #{hide_computer_hand(computer)}")
  prompt("Would you like to hit? (Y/N)?")
  answer = gets.chomp
  
  if answer == 'Y'.downcase
    player << draw_card(active_deck)
    total = sum_cards(player)
    #prompt("You are holding #{converted_cards(player)}")
    
    # If total is 21 or over break 
    if game_over?(total)
      break
    end

  elsif answer == 'N'.downcase
    sum_cards(player)
    break
  end
  
end

loop do
  if sum_cards(computer) <= 17
    computer << draw_card(active_deck)
    total = sum_cards(computer)
    #prompt("The computer is holding #{converted_cards(computer)}")

    if total  > 21
      prompt("BUST! Computer loses!")
      break
    end
  end
  sum_cards(computer)
  break
end

show_both_hands(player, computer)
if sum_cards(player) > 21 
  prompt("You busted, You lose!") 
elsif sum_cards(computer) > 21
  prompt("Computer busted, you win!")
elsif sum_cards(player) >= sum_cards(computer)
  prompt("You Win!!!")
else
  prompt("You lose this one.")
end