require 'tty-prompt'
require 'colorize'

    puts "Lets Go!"

    score = 0

    prompt = TTY::Prompt.new
    greeting = 'What is the capital city of America'
    choices = %w(New York, Los Angeles, California, Washington DC)
    answer = prompt.select(greeting, choices)
    if answer == choices[3]
        puts "That's correct! Good job!"
        score += 1
      else
        puts "Sorry, the correct answer is #{choices[3]}."
      end
    end

    prompt = TTY::Prompt.new
    greeting = 'What is New York also refered to as?'
    choices = %w(Big Banana, Big Pineapple, Big apple, Big Everything)
    answer = prompt.select(greeting, choices)
    if answer == choices[2]
        puts "That's correct! Good job!"
        score += 1
      else
        puts "Sorry, the correct answer is #{choices[2]}."
      end
    end

    prompt = TTY::Prompt.new
    greeting = 'How many states are there in America?'
    choices = %w(37 50 48 62)
    answer = prompt.select(greeting, choices)
    if answer == choices[1]
        puts "That's correct! Good job!"
        score += 1
      else
        puts "Sorry, the correct answer is #{choices[1]}."
      end
    end

    prompt = TTY::Prompt.new
    greeting = 'Which is these is the USA in?'
    choices = %w(South America, North America, West America, East America)
    answer = prompt.select(greeting, choices)
    if answer == choices[1]
        puts "That's correct! Good job!"
        score += 1
      else
        puts "Sorry, the correct answer is #{choices[1]}."
      end
    end

    sleep(1)
    puts "Lets see how well you have done."
    if score == 4
        puts "You got #{score} out of 4 correct! That's awesome!"
        puts ""
        puts "Thats the end of the Journey..."
        puts ""
        puts "For now!"
        puts "Lets see eachother again! See ya!"
        sleep(0.5)
        game_menu
    elsif score > 1
        puts "You got #{score} out of 4 correct! Not bad!"
        puts ""
        puts "Thats the end of the Journey..."
        puts ""
        puts "For now!"
        puts "Lets see eachother again! See ya!"
        sleep(0.5)
        game_menu
        puts "You got #{score} correct! Lets start over!"
        system("clear")
        quiz_usa
    end
    


