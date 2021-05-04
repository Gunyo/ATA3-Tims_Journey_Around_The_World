require 'tty-prompt'
require 'colorize'

system("clear")

def quiz_start

  system("clear")
  puts "Lets Go!"

  score = 0

    prompt = TTY::Prompt.new
    greeting = 'What is the capital city of Australia?'
    choices = %w(Sydney Melbourne Canberra Brisbane)
    answer = prompt.select(greeting, choices)
    if answer == choices[2]
      puts "That's correct! Good job!"
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[2]}."
    end

    prompt = TTY::Prompt.new
    greeting = 'What is Australia''s biggest coral reef called?'
    choices = ["Great Barrier Reef", "Marina Trenches", "Kingman Reef", "Landsdown Bank"]
    answer = prompt.select(greeting, choices)
    if answer == choices[0]
      puts "That's correct! Good job!"
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[0]}."
    end

    prompt = TTY::Prompt.new
    greeting = 'What % of Australia is desert?'
    choices = %w(30% 18% 70% 50%)
    answer = prompt.select(greeting, choices)
    if answer == choices[2]
      puts "That's correct! Good job!"
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[2]}."
    end

    prompt = TTY::Prompt.new
    greeting = 'Where is the largest sand island located in Australia'
    choices = ["North Stradbrok Island", "Fraser Island", "Moreton Island", "Snake Island"]
    answer = prompt.select(greeting, choices)
    if answer == choices[1]
      puts "That's correct! Good job!"
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[1]}."
    end

    sleep(1)
    puts "Lets see how well you have done.".colorize(:light_green)
    if score == 4
      puts "You got #{score} out of 4 correct! That's awesome!".colorize(:light_green)
      puts ""
      puts "Next stop, Japan!".colorize(:light_blue)
      sleep(2)
      quiz_jpn
    elsif score > 1
      puts "You got #{score} out of 4 correct! Not bad!".colorize(:light_green)
      puts ""
      puts "Next stop, Japan!".colorize(:light_blue)
      sleep(2)
      quiz_jpn
    else
      puts "You got #{score} correct! Lets start over!".colorize(:light_red)
      sleep(1.5)
      quiz_start
    end
end