VALID_CHOICES = %w(1 2 3 rock paper scissors gun)
WINNING_LOGIC = { rock: 'scissors',
                  paper: 'rock',
                  scissors: 'paper',
                  gun: ['rock', 'paper', 'scissors']
                }

def prompt(message)
  puts "=> #{message}"
end

def get_choice
  prompt("What's your move?: 1) Rock, 2) Paper, 3) Scissors")
  gets.chomp
end

def standardize(choice)
  case choice
  when "Rock".downcase, "1"
    "rock"
  when "Paper".downcase, "2"
    "paper"
  when "Scissors".downcase, "3"
    "scissors"
  else
    puts "That's not a valid choice. Please pick again..."
    get_choice()
  end
end

def win?(player1, player2)
  if (player1 == 'rock' && player2 == 'scissors') ||
     (player1 == 'paper' && player2 == 'rock') ||
     (player1 == 'scissors' && player2 == 'paper') ||
     (player1 == 'gun')
  end
end


def results(player1, player2)

def display_results(player1, player2)
  if win?(player1, player2)
    "You win!"
  elsif player1 == player2
    "Tie Game."
  else
    "You lose!"
  end
end



loop do
  wins = 0
  loses = 0 
  while wins || loses < 3
    loop do
      user_choice = get_choice()
      user_choice = standardize(user_choice)
      ai_choice = standardize(VALID_CHOICES[0,6].sample)

      prompt("User: #{user_choice.capitalize} VS. #{ai_choice.capitalize}")

      puts display_results(user_choice, ai_choice)

      puts "User: #{wins} wins; Computer #{loses} wins"
    end
  end
  prompt("Would you like to play again? Type 'No' to exit: ")
  break if gets.downcase.chomp.start_with?("n")
end