require 'pry'

def run_guessing_game
  input = nil
  while input != 'exit'
    puts 'Guess a number between 1 and 6.'
    input = gets.downcase.chomp
    random_num = rand(1..6)
    if input.to_i == random_num
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{random_num}."
    end
  end
  puts 'Goodbye!'
end

