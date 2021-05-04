require 'tty-prompt'
require 'colorize'

def quiz_eng
    puts "Lets Go!"

    score = 0

    prompt = TTY::Prompt.new
    greeting = 'What is the capital city of England?'
    choices = %w(Mancheter Leicester London Whales)
    answer = prompt.select(greeting, choices)
    if answer == choices[2]
      puts "That's correct! Good job!"
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[2]}."
    end

    prompt = TTY::Prompt.new
    greeting = 'Which of these are a Wolrd Heritage site in England?'
    choices = %w(Mt Juji, Stonehenge, London Bridge, Eifel Tower)
    answer = prompt.select(greeting, choices)
    if answer == choices[1]
      puts "That's correct! Good job!"
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[1]}."
    end

    prompt = TTY::Prompt.new
    greeting = 'What is the Queen''s name?'
    choices = %w(Elizabeth Margeret Caterina Catherine)
    answer = prompt.select(greeting, choices)
    if answer == choices[0]
      puts "That's correct! Good job!"
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[0]}."
    end

    prompt = TTY::Prompt.new
    greeting = 'On the streets of London, what color are the busses?'
    choices = %w(Blue Yellow Green Red)
    answer = prompt.select(greeting, choices)
    if answer == choices[3]
      puts "That's correct! Good job!"
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[3]}."
    end

    sleep(1)
    puts "Lets see how well you have done."
    if score == 4
      puts "You got #{score} out of 4 correct! That's awesome!"
      puts ""
      puts "Next stop, United States of America!"
      sleep(0.5)
      quiz_usa
    elsif score > 1
      puts "You got #{score} out of 4 correct! Not bad!"
      puts ""
      puts "Next stop, United States of America!"
      sleep(0.5)
      quiz_usa
    else
      puts "You got #{score} correct! Lets start over!"
      system("clear")
      quiz_jpn
    end
end