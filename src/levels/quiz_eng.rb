require 'tty-prompt'
require 'colorize'

system("clear")

def quiz_eng

  system("clear")
  puts "Lets Go!"

    score = 0

    prompt = TTY::Prompt.new
    greeting = 'What is the capital city of England?'
    choices = %w(Mancheter Leicester London Whales)
    answer = prompt.select(greeting, choices)
    if answer == choices[2]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[2]}.".colorize(:red)
    end

    prompt = TTY::Prompt.new
    greeting = 'Which of these are a Wolrd Heritage site in England?'
    choices = ["Mt Juji", "Stonehenge", "London Bridge", "Eifel Tower"]
    answer = prompt.select(greeting, choices)
    if answer == choices[1]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[1]}.".colorize(:red)
    end

    prompt = TTY::Prompt.new
    greeting = 'What is the Queen''s name?'
    choices = %w(Elizabeth Margeret Caterina Catherine)
    answer = prompt.select(greeting, choices)
    if answer == choices[0]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[0]}.".colorize(:red)
    end

    prompt = TTY::Prompt.new
    greeting = 'On the streets of London, what color are the buses?'
    choices = %w(Blue Yellow Green Red)
    answer = prompt.select(greeting, choices)
    if answer == choices[3]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[3]}.".colorize(:red)
    end

    sleep(1)
    puts "Lets see how well you have done.".colorize(:light_green)
    if score == 4
      sleep(2)
      puts "You got #{score} out of 4 correct! That's awesome!".colorize(:light_green)
      puts ""
      puts "Next stop, United States of America!".colorize(:light_blue)
      sleep(1)
      print "Press 'enter' to proceed"
      gets
      quiz_usa
    elsif score >= 3
      sleep(2)
      puts "You got #{score} out of 4 correct! Not bad!".colorize(:light_green)
      puts ""
      puts "Next stop, United States of America!".colorize(:light_blue)
      sleep(1)
      print "Press 'enter' to proceed"
      gets
      quiz_usa
    else
      puts "You got #{score} correct! Lets start over!".colorize(:light_red)
      sleep(2)
      quiz_jpn
    end
end