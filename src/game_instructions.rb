require 'colorize'

  def instructions
    system("clear")

    puts "For each question you answer correctly, you get a point".colorize(:light_blue)
    puts "To enter the next country you will need enough points to get in".colorize(:light_blue)
    print "Press 'enter' to go back to menu"
    gets
  end