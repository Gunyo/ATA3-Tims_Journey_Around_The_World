require 'tty-prompt'
require 'colorize'

require_relative '../levels/quiz_eng.rb'
require_relative '../levels/quiz_jpn.rb'

    puts "Lets Go!"

    score = 0

    prompt = TTY::Prompt.new
    greeting = 'What is the capital city of Japan?'
    choices = %w(Kyoto Osaka Hiroshima Tokyo)
    answer = prompt.select(greeting, choices)
    if answer == choices[3]
        puts "That's correct! Good job!"
        score += 1
      else
        puts "Sorry, the correct answer is #{choices[3]}."
      end
    end

    prompt = TTY::Prompt.new
    greeting = 'What is the tallest mountain in Japan called?'
    choices = %w(Hotakono Kita Yari Fuji)
    answer = prompt.select(greeting, choices)
    if answer == choices[3]
        puts "That's correct! Good job!"
        score += 1
      else
        puts "Sorry, the correct answer is #{choices[3]}."
      end
    end

    prompt = TTY::Prompt.new
    greeting = 'What is the traditional Japanese inn called?'
    choices = %w(Ryokan Onsen Capsule Hanok)
    answer = prompt.select(greeting, choices)
    if answer == choices[0]
        puts "That's correct! Good job!"
        score += 1
      else
        puts "Sorry, the correct answer is #{choices[0]}."
      end
    end

    prompt = TTY::Prompt.new
    greeting = 'Which character did Japan create?'
    choices = %w(Donald Duck, Elmo, Mario, Gaz)
    answer = prompt.select(greeting, choices)
    if answer == choices[2]
        puts "That's correct! Good job!"
        score += 1
      else
        puts "Sorry, the correct answer is #{choices[2]}."
      end
    end

    sleep(1)
    puts "Lets see how well you have done."
    if score == 4
        puts "You got #{score} out of 4 correct! That's awesome!"
        puts ""
        puts "Next stop, England!"
        sleep(0.5)
        quiz_eng
    elsif score > 1
        puts "You got #{score} out of 4 correct! Not bad!"
        puts ""
        puts "Next stop, England!"
        sleep(0.5)
        quiz_eng
    else
        puts "You got #{score} correct! Lets start over!"
        system("clear")
        quiz_jpn
    end
    