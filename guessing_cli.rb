def run_guessing_game
  user_number = ""
  while user_number != "exit"
    puts "Guess a number between 1 and 6.\n"
    user_number = gets.chomp
    # have computer generate a random number, and round the number
    comp_number = rand(1..6).to_s
    # compare users number to computer number
    if user_number == comp_number
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{comp_number}."
    end
  end
  puts "Goodbye!"
end


# use an until loop
# have computer generate random numbers,
# use an if and else statament to validate data and have outputs

# def run_guessing_game
#   #
# end
