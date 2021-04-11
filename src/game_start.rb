require 'tty-prompt'

system("clear")
  sleep(1)
    puts "Lets Go!"

    score = 0

prompt = TTY::Prompt.new
greeting = 'What is the capital city of Australia?'
choices = %w(Brisbane Sydney Canberra Melbourne)
answer = prompt.select(greeting, choices)
'That is correct! Good job!' if answer == choices[3]
score += 1
else
    puts "Sorry, the correct answer is #{choice[3]}"
end

prompt = TTY::Prompt.new
greeting = 'What is the capital city of Australia?'
choices = %w(Brisbane Sydney Canberra Melbourne)
answer = prompt.select(greeting, choices)
'That is correct! Good job!' if answer == choices[3]


