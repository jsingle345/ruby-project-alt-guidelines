require 'pry'


class Cli

    def run
        input = ""
        while input != "exit"
            welcome
            @input = get_user_input
            case input
            when "exit"
                exit_app
            else 
                puts "Invalid input, please try again"
            end
        end
    end

    def welcome
        puts "Let's Get Inspired!!!"
    sleep(1.5)
    puts "Enter your name"
    end

    def get_user_input
        gets.chomp
    end

    def exit_app
        puts "Take care"
        sleep(1)
        puts "And remember life is what you make it..."
        sleep(1.5)
        puts "Make it great!!!"
    end

end