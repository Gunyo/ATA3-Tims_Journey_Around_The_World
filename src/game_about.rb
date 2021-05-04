require 'colorize'


def about
  system("clear")

  puts "You are set off to an adventure with Tim!".colorize(:light_blue)
  puts ""
  puts "How well do you know about the world we live in?".colorize(:light_blue)
  puts ""
  puts "Lets find out!".colorize(:light_blue)
  print "Press 'enter' to go back to menu"
  gets
end