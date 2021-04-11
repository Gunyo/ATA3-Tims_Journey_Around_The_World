require 'colorize'
require 'tty-prompt'

class CommandLineInterFace
    def run 
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
            game_instructions
        elsif welcome == 'About'
            game_about
        else 
            puts 'Goodbye'
        end 
    end
end
            