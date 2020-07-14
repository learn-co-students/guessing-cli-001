# Code your solution here!
def run_guessing_game
  loop do
    puts "If you want to quit this game, type 'exit' now."
    puts "Otherwise"
    puts "/Guess a number between 1 and 6./"
    input = gets.chomp
    if input == "exit"
      puts "/Goodbye!/"
      break
    else
      guess = input.to_i
      if guess >= 1 && guess <= 6
        the_number = rand(1..6)
        if guess == the_number
          puts "/You guessed the correct number!/"
        else
          puts "/The computer guessed #{the_number}./"
        end
      else
        puts "Incorrect input. You need to enter a number between 1 and 6"
      end
    end
  end
end
