WINNING_COMBOS = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [1, 5, 9],
  [3, 5, 7]
]
PLAYER = 'X'
COMPUTER = 'O'
EMPTY_SPACE = ' '

def prompt(str)
  puts "=> #{str}"
end

def intro_screen
  system 'clear'
  puts ''
  puts ''
  puts ''
  puts ''
  puts '    888   d8b        888                   888'                   
  puts '    888   Y8P        888                   888'                  
  puts '    888              888                   888'                    
  puts '    888888888 .d8888b888888 8888b.  .d8888b888888 .d88b.  .d88b.' 
  puts '    888   888d88P"   888       "88bd88P"   888   d88""88bd8P  Y8b' 
  puts '    888   888888     888   .d888888888     888   888  88888888888'
  puts '    Y88b. 888Y88b.   Y88b. 888  888Y88b.   Y88b. Y88..88PY8b.'     
  puts '     Y888888 "Y8888P "Y888"Y888888 "Y8888P "Y888 "Y88P"  "Y8888'          
  puts ''
  puts ''
  puts ''
  puts ''                         
end

def play_game 
  puts '                      => "P" to Play'
  puts '                      => "O" for Options'
  puts '                      => "Q to quit' 
  answer = gets.downcase.chomp
end

# Rubocop disable: Metrics/MethodLength, Metrics/AbcSize
def display_board(brd, score, num_wins)
  system 'clear'
  puts "  First Player to #{num_wins} Wins!"
  puts "    P1: #{PLAYER}. Computer: #{COMPUTER}."
  puts "P1 Score: #{score[:player]}  Comp Score: #{score[:computer]}"
  puts ''
  puts '        |         |        '
  puts "   #{brd[1]}    |    #{brd[2]}    |    #{brd[3]}     "
  puts '        |         |        '
  puts '- - - - + - - - - + - - - -'
  puts '        |         |        '
  puts "   #{brd[4]}    |    #{brd[5]}    |    #{brd[6]}     "
  puts '        |         |        '
  puts '- - - - + - - - - + - - - -'
  puts '        |         |        '
  puts "   #{brd[7]}    |    #{brd[8]}    |    #{brd[9]}     "
  puts '        |         |        '
  puts ''
end
# Rubocop enable: Metrics/MethodLength, Metrics/AbcSize

def display_options(num_wins)
  system 'clear'
  puts 'Enter the number you would like to change, "Q" to exit back to title screen.'
  puts ''
  puts "1) Difficulty: {difficutlY}"
  puts ''
  puts "2) Change Player Order: Player is currently #{PLAYER}"
  puts ''
  puts "3) Games to win: #{num_wins}"
  puts ''
  puts ''
end

def intialize_board
  board = {}
  (1..9).map { |key| board[key] = EMPTY_SPACE }
  board
end

def initialize_score
  score = { player: 0, computer: 0 } 
end

def initialize_wins
  wins = 3
end

def player_markers
  players = {'player' => PLAYER,' computer' => COMPUTER}
end

# input is a hash, output is list of the hash values that are empty
def empty_spaces(brd)
  brd.keys.select { |key| brd[key] == EMPTY_SPACE }
end

def player_mark(brd)
  prompt("Available choices: #{join_or(empty_spaces(brd))}")
  mark = gets.chomp.to_i
  loop do
    if brd[mark] == EMPTY_SPACE
      brd[mark] = PLAYER
      break
    else
      puts "Invalid option, available choices: #{empty_spaces(brd)}"
      mark = gets.chomp.to_i
    end
  end
end

def computer_mark(brd)
  if brd[5] == EMPTY_SPACE
    brd[5] = COMPUTER
  else
    mark = empty_spaces(brd).sample
    brd[mark] = COMPUTER
  end
  puts "The computer chose #{mark}"
end

# input is a hash and either marker in winning_combonations. 
# This checks to see if there is only 1 empty spot in the 
# each subarray of winning combonation. If there is only one empty spot - methode returns true.
def at_risk?(brd)
  WINNING_COMBOS.each do |combo|
    brd.values_at(combo).count(PLAYER) == 2
  end
end

# Input is a hash
# Output returns 
def computer_offense(brd)
  
end

# input is board hash
# returns 
def computer_defense(brd)
  if at_risk?(brd)
    WINNING_COMBOS.each do |combo|
      if brd.values_at(combo).count(PLAYER) == 2
        brd[mark] = COMPUTER
      end
    end
  end
end

# Inuput is hash, which is converted into an array and returns true or false if the array is empty
def board_full?(brd)
  empty_spaces(brd).empty?
end

def game_results(brd)
  WINNING_COMBOS.each do |combo|
    return 'Player' if combo.all? { |num| brd[num] == PLAYER }
    return 'Computer' if combo.all? { |num| brd[num] == COMPUTER }
    return 'Tie Game' if board_full?(brd)
  end
  nil
end

# !!game_results evaluates to nil when there is no winner due to nil in line 6
# function returns not nil (or true) when any of the other conditions are met
def winner?(brd)  
  !!game_results(brd)
end

# input is a hash
def display_results(brd)
  if game_results(brd) == 'Player'
    prompt('Player won this round!')
  elsif game_results(brd) == 'Computer'
    prompt('The commputer won this round!')
  end
end

def full_game_winner(score, num_wins)
  if score[:player] == num_wins
    prompt('********Player 1 Wins!!*********')
  elsif
    score[:computer] == num_wins
    prompt('***The computer won this time.***')
  end
end

def play_again
  prompt('Would you like to play again? (Y/N)')
  answer = gets.downcase.chomp
end

def join_or(ary, delimiter = ',', word = 'or')
  joined = ''
  if ary.size == 1
    joined = ary[0]
  else
    last = word + ' ' + ary.pop.to_s
    ary.each do |ele|
      joined += ele.to_s + delimiter
    end
    joined + last
  end
end

def add_score(score, brd)
  if game_results(brd) == 'Player'
    score[:player] += 1
  elsif game_results(brd) == 'Computer'
    score[:computer] += 1
  end
end

def win_threshold(num_wins)
  system 'clear'
  puts 'Enter a number for the number of rounds to win the game (1-10)'
  num_wins = gets.chomp.to_i
  if (1..10).include?(num_wins)
    puts "The total number of rounds to win has been updated to #{num_wins}"
    sleep(0.5)
  else
    loop do
      puts 'Invalid answer please choose a number between 1 and 10.'
      num_wins = gets.chomp.to_i
      break
    end
  end
  num_wins
end

#input is the player marker, this is a binary value so the output is reassignment of both markers to the opposite value
def swap_marker(marker)
  marker = 'player' ? 'computer' : 'player'
end


def change_player_order(marker)
  system 'clear'
  prompt('Would you like to change player order? (Y/N)')
  answer = gets.chomp.downcase
  if answer.start_with?('y')
    marker = swap_marker(marker)
  end
  puts "The player is now #{marker}"
  sleep(1)
  marker
end


  
#------------------------ Main Loop ----------------------------------#
wins = initialize_wins
players = player_markers

loop do
  intro_screen
  case play_game

  when 'p'
    score = initialize_score
    loop do
      until score.value?(wins)
        board = intialize_board
        display_board(board, score, wins)

        loop do
          player_mark(board)
          display_board(board, score, wins)
          break if winner?(board)

         
          computer_mark(board)
          display_board(board, score, wins)
          break if winner?(board)
        end

        display_results(board)
        add_score(score, board)
        sleep(1)
      end

      full_game_winner(score, wins)
      score = initialize_score
      break if play_again.start_with?('n')
    end

  when 'o'
    loop do
      display_options(wins)
      answer = gets.chomp
      case answer
      when '1'
        puts 'difficulty'

      when '2'
        player = change_player_order(players)
        

      when '3'
        wins = win_threshold(wins)
        break

      when 'q'.downcase
        break
      end
    end

  when 'q'
    system 'clear'
    prompt('Thanks for playing!')
    break
  end
end
