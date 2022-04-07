# frozen_string_literal: true

VALID_LETTERS = %w[r p s l k].freeze

VALID_CHOICES = { 'r': 'rock',
                  'p': 'paper',
                  's': 'scissors',
                  'l': 'lizard',
                  'k': 'Spock' }.freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

win_hash = { 'rock': %w[scissors lizard],
             'paper': %w[rock Spock],
             'scissors': %w[paper lizard],
             'Spock': %w[rock scissors],
             'lizard': %w[Spock paper] }

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.values.flatten.join(', ')}.")
    prompt("Type 'r' for rock")
    prompt("Type 'p' for paper")
    prompt("Type 's' for scissors")
    prompt("Type 'l' for lizard")
    prompt("Type 'k' for Spock")
    choice = Kernel.gets.chomp.downcase
    break if VALID_LETTERS.include?(choice)

    prompt("That's not a valid choice.")
  end

  choice = VALID_CHOICES.fetch(choice.to_sym)

  computer_choice = VALID_CHOICES.values.to_a.sample
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  if win_hash.fetch(choice.to_sym).include?(computer_choice)
    prompt('You win!')
  elsif win_hash.fetch(computer_choice.to_sym).include?(choice)
    prompt('You lose!')
  else
    prompt("It's a tie!")
  end

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good bye!')
