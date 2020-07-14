require 'pry'

# Code your solution here!
def run_guessing_game

loop do
  puts "Guess a number between 1 and 6."
  guess = gets.chomp
  rand_num = rand(6)
  if guess != "exit"
    if guess.to_i == rand_num
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{rand_num}."
    end
  else
    puts "Goodbye!"
    break
  end
end
end
