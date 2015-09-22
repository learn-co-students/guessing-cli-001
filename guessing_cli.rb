require 'pry'

def exit
  puts "Goodbye!"
end

def run_guessing_game
  input = ""
  until input == "exit"
    random_number = rand(1..6)
    puts "Guess a number between 1 and 6."
    input = gets.chomp.downcase.strip
    if input.to_i == random_number
      puts "You guessed the correct number!"
      exit
    elsif input.to_i != random_number
      puts "The computer guessed 5."
      exit
    elsif input == "exit"
      exit
    end
  end
end
