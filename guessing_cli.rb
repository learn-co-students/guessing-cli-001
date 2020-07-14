# Code your solution here!


def run_guessing_game
  input = ""
  until input == "exit"
    puts "Guess a number between 1 and 6."
    num = rand(1..6)
    input = gets.chomp
    if input == "exit"
      puts "Goodbye!"
    elsif input.to_i > 0 && input.to_i == num
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{num}."
    end
  end
end
