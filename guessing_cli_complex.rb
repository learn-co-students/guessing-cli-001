
def player_guess(min_number, max_number, all_guesses)
  guess = nil
  
  loop do
    puts "Guess a number between #{min_number} and #{max_number}."
    guess = gets.chomp.downcase
    
    if guess == "exit"
      break
    else
      guess = guess.to_i
    end
    
    if guess >= min_number && guess <= max_number
      break
    end
    
    puts "Sorry, you entered an invalid number."
  end
  
  all_guesses << guess
  guess
end
  
  
def computer_guess(min_number, max_number, all_guesses)
  guess = nil
  
  loop do
    guess = rand(max_number) + min_number
    if not all_guesses.include?(guess)
      all_guesses << guess
      break
    end
  end
  
  puts "The computer guessed #{guess}."
  guess
end


def run_guessing_game
  min_number = 1
  max_number = 6
  all_guesses=[]
  
  winning_number = rand(max_number) + min_number
  
  loop do
    last_guess = player_guess(min_number, max_number, all_guesses)
    
    if last_guess == "exit"
      puts "\nGoodbye!"
      break
    elsif last_guess == winning_number
      puts "\nYou guessed the correct number!"
      break
    elsif computer_guess(min_number, max_number, all_guesses) == winning_number
      puts "\nThe computer guessed the correct number :("
      break
    end
  end
end
