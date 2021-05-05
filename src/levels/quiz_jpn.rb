require 'tty-prompt'
require 'colorize'

system("clear")

def quiz_jpn

  system("clear")
  puts "Lets Go!"

    score = 0

    prompt = TTY::Prompt.new
    greeting = 'What is the capital city of Japan?'
    choices = %w(Kyoto Osaka Hiroshima Tokyo)
    answer = prompt.select(greeting, choices)
    if answer == choices[3]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[3]}.".colorize(:red)
    end

    prompt = TTY::Prompt.new
    greeting = 'What is the tallest mountain in Japan called?'
    choices = %w(Hotakono Kita Yari Fuji)
    answer = prompt.select(greeting, choices)
    if answer == choices[3]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[3]}.".colorize(:red)
    end

    prompt = TTY::Prompt.new
    greeting = 'What is the traditional Japanese inn called?'
    choices = %w(Ryokan Onsen Capsule Hanok)
    answer = prompt.select(greeting, choices)
    if answer == choices[0]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[0]}.".colorize(:red)
    end

    prompt = TTY::Prompt.new
    greeting = 'Which character did Japan create?'
    choices = ["Donald Duck", "Elmo", "Mario", "Gaz"]
    answer = prompt.select(greeting, choices)
    if answer == choices[2]
      puts "That's correct! Good job!".colorize(:light_green)
      score += 1
    else
      puts "Sorry, the correct answer is #{choices[2]}.".colorize(:red)
    end

    sleep(1)
    puts "Lets see how well you have done.".colorize(:light_green)
    if score == 4
      sleep(2)
      puts "You got #{score} out of 4 correct! That's awesome!".colorize(:light_green)
      puts ""
      puts "Next stop, England!".colorize(:light_blue)
      sleep(1)
      print "Press 'enter' to proceed"
      gets
      quiz_eng
    elsif score > 1
      sleep(2)
      puts "You got #{score} out of 4 correct! Not bad!".colorize(:light_green)
      puts ""
      puts "Next stop, England!".colorize(:light_blue)
      sleep(1)
      print "Press 'enter' to proceed"
      gets
      quiz_eng
    else
      puts "You got #{score} correct! Lets start over!".colorize(:light_red)
      sleep(2)
      quiz_jpn
    end
end