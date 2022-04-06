# frozen_string_literal: true

VALID_CHOICES = %w[rock paper scissors Spock lizard].freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end


def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'Spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard')
    (first == 'Spock' && second == 'rock') ||
    (first == 'Spock' && second == 'scissors')
    (first == 'lizard' && second == 'Spock') ||
    (first == 'lizard' && second == 'paper')
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}.")
    prompt("Type 'r' for rock")
    prompt("Type 'r' for rock")
    prompt("Type 'r' for rock")
    prompt("Type 'r' for rock")
    prompt("Type 'r' for rock")
    choice = Kernel.gets.chomp
    break unless answer.downcase().start_with?('y')


    break if VALID_CHOICES.include?(choice)
    
    prompt("That's not a valid choice.")
  end

  
  computer_choice = VALID_CHOICES.sample  
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  
  if win?(choice, computer_choice)
  prompt("You won!")

  elsif win?(computer_choice, choice)
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
