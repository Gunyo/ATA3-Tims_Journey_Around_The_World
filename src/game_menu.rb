require 'colorize'
require 'tty-prompt'

require_relative 'game_about'
require_relative 'game_instructions'
require_relative './levels/quiz_start'
require_relative './levels/quiz_jpn'
require_relative './levels/quiz_eng'
require_relative './levels/quiz_usa'

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
    instructions
  elsif welcome == 'About'
    about
  else
    puts 'Goodbye'
  end

if ARGV.include? "help"
  puts "Select Instructions on how to play the game"
end
