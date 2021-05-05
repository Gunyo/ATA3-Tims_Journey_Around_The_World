require 'tty-prompt'
require 'colorize'

system("clear")

def quiz_usa

    system("clear")
    puts "Lets Go!"

    score = 0

    prompt = TTY::Prompt.new
    greeting = 'What is the capital city of America'
    choices = ["New York", "Los Angeles", "California", "Washington DC"]
    answer = prompt.select(greeting, choices)
    if answer == choices[3]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[3]}.".colorize(:red)
    end

    prompt = TTY::Prompt.new
    greeting = 'What is New York also refered to as?'
    choices = ["Big Banana", "Big Pineapple", "Big apple", "Big Everything"]
    answer = prompt.select(greeting, choices)
    if answer == choices[2]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[2]}.".colorize(:red)
    end

    prompt = TTY::Prompt.new
    greeting = 'How many states are there in America?'
    choices = %w(37 50 48 62)
    answer = prompt.select(greeting, choices)
    if answer == choices[1]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[1]}.".colorize(:red)
    end

    prompt = TTY::Prompt.new
    greeting = 'Which is these is the USA in?'
    choices = ["South America", "North America", "West America", "East America"]
    answer = prompt.select(greeting, choices)
    if answer == choices[1]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[1]}.".colorize(:red)
    end

    sleep(1)
    puts "Lets see how well you have done."
    if score == 4
      sleep(2)
      puts "You got #{score} out of 4 correct! That's awesome!".colorize(:light_green)
      puts ""
      puts "Thats the end of the Journey...".colorize(:light_blue)
      puts ""
      puts "For now!".colorize(:light_blue)
      puts "Lets see eachother again! See ya!".colorize(:light_blue)
      print "Press 'enter' to go back to menu"
      gets
    elsif score > 1
      sleep(2)
      puts "You got #{score} out of 4 correct! Not bad!".colorize(:light_green)
      puts ""
      puts "Thats the end of the Journey...".colorize(:light_blue)
      puts ""
      puts "For now!"
      puts "Lets see eachother again! See ya!".colorize(:light_blue)
      print "Press 'enter' to go back to menu".colorize(:light_blue)
      gets
    else
      puts "You got #{score} correct! Lets start over!".colorize(:light_red)
      sleep(2)
      quiz_usa
    end
end