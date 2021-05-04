require 'colorize'

require_relative 'game_about'
require_relative 'game_menu'

    def instructions
        puts "For each question you answer correctly, you get a point".orange
        puts ""
        puts "To enter the next country you will need enough points to get in".orange
        sleep(1)
    end

