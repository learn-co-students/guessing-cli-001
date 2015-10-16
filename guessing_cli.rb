
def player_guess(min_number, max_number)
  puts "\nGuess a number between #{min_number} and #{max_number}."
  gets.chomp.downcase
end


def run_guessing_game
  min_number = 1
  max_number = 6
  
  loop do
    winning_number = rand(min_number..max_number)
    guess = player_guess(min_number, max_number)
    
    if guess == "exit"
      break
    elsif guess.to_i == winning_number
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{winning_number}."
    end
  end
  
  puts "Goodbye!"
end
