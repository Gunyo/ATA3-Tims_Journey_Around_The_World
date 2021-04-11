require 'tty-prompt'

module 
prompt = TTY::Prompt.new
greeting = 'What is the capital city of Australia?'
choices = %w(Brisbane Sydney Canberra Melbourne)
answer = prompt.select(greeting, choices)