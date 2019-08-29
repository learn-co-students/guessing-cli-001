# Code your solution here!
def run_guessing_game
  response = ""
  while response != "exit"
    puts "Guess a number between 1 and 6."
    response = gets.chomp
    num = rand(1..6)
    if response == "exit"
      exit_game
      break
    elsif response == num.to_s
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{num}."
    end
  end
end

def exit_game
  puts "Goodbye!"
end