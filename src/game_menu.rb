require 'colorize'
require 'tty-prompt'

require_relative 'game_about'
require_relative 'game_instructions'
require_relative './levels/quiz_start'

def run 
  prompt = TTY::Prompt.new
  welcome = prompt.select("Hello! Welcome to Tim's Journey Around the World!") do |menu|
    menu.choice 'Start'
    menu.choice 'Instructions'
    menu.choice 'About'
    menu.choice 'Exit'
  end

  if welcome == 'Start'
    quiz_start
  elsif welcome == 'Instructions'
    game_instructions
  elsif welcome == 'About'
    game_about
  else
    puts 'Goodbye'
  end
end

if ARGV.include? "help"
  puts "Select Instructions on how to play the game"
end