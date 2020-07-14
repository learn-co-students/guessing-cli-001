def run_guessing_game
  command = ""
  loop do
    puts "/Guess a number between 1 and 6/"
    comp_guess = rand(1..6)
    command = gets.chomp.downcase
    if command == "exit"
      break
    end
    if comp_guess == command.to_i
      puts "/You guessed the correct number!/"
    else
      puts "/The computer guessed #{comp_guess}/"
    end
  end
  puts "/Goodbye!/"
end  # Code your solution here!
