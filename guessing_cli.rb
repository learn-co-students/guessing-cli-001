# Code your solution here!
def run_guessing_game
  running = true
  while running == true
    num = rand(1..6)
    puts "Guess a number between 1 and 6."
    guess = gets.chomp
    if guess.downcase == "exit"
      puts "Goodbye!"
      running = false
    elsif guess.to_i == num
      puts "You guessed the correct number!"
    elsif guess.to_i != num
      puts "The computer guessed #{num.to_s}."
    else
      "Please enter a valid input."
    end
  end
end
