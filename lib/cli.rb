require 'pry'


class Cli
    attr_reader :input, :get_user_input, :current_user, :my_favorite

    def run
        @input = ""
        welcome
        login
        while @input != "exit"
            get_user_input
            case @input
            when "1"
                view_quotes
            when "2"
                view_favorites
            when "3"
                add_quote_to_favorites
            when "4"
                modify_favorite
            when "5"
                delete_favorite
            when "exit"
                exit_app
                break
            else 
                puts "---------- Invalid input, please try again ----------"
                puts ""
                puts "" 
                puts ""
                menu
            end
        end
    end

    def welcome
        puts "Let's Get Inspired!!!"
    #sleep(1.5)
   
    end

    def login
        puts "Please enter your name to login:"
        get_user_input
        @current_user = User.find_or_create_by(:name => @input)
        puts "Welcome #{@current_user.name}!!!"
        #sleep(2)
        puts ""
        menu
    end

    def menu
        @input
        puts "What would you like to do today:"
            puts ""
        puts "1. View Quotes"
            puts ""
        puts "2. View My Favorite Quotes"
            puts ""
        puts "3. Add Quotes to My Favorite Quotes"
            puts ""
        puts "4. Change My Favorite's Name"
            puts ""
        puts "5. Delete Quote from My Favorites"
            puts ""
        puts "exit"
        
    end

    def exit_app
        puts "Take care"
        #sleep(1)
        puts "And remember life is what you make it..."
        #sleep(1.5)
        puts "Make it great #{@current_user.name}!!!"
        puts ""
    end

    

    def view_quotes
        puts "--- Quotes ---"
        puts ""
          Quote.all.each do |quote|
          puts ""
          puts "#{quote.id}. #{quote.quotation} by: #{quote.author}"
          puts ""
          end
        menu
    end

    def add_quote_to_favorites
        view_quotes
        
        params = {}

        
        puts ""
        puts ""

        puts "What would you like to name this Quote as in your favorites:"
        params[:name] = get_user_input
    
        
        puts "Enter the number associated with the quote you would like to save to favorites"
        params[:quote_id] = get_user_input
        new_favorite = @current_user.favorites.build(params)
        new_favorite.save
        
        sleep(2)
        puts "Added Quote to your Favorite..."
        sleep(2)
        menu
    end


   
    def view_favorites
        puts "------  My Favorites -------"
       
         my_favorite = @current_user.favorites
        @my_favorite = my_favorite
         my_favorite.each do |favorite|
           puts ""
           puts "Situation: #{favorite.name}"
           puts "#{favorite.id}. #{favorite.quote.quotation} by: #{favorite.quote.author}"
           puts ""
         end
        puts ""
        menu
    end

    def modify_favorite
        
        view_favorites
        puts ""
        puts ""
        puts "Select the Favorite Number you would like to change:"
        get_user_input
        favorite = Favorite.find_by(id: get_user_input)
        puts "Change Favorite name:"
        favorite.name = get_user_input
        favortie.save
        puts "Favorite Name is changed"

        sleep(2)
        menu
    end

    def delete_favorite
        view_favorites
        puts ""
        puts ""
        puts "Select the Favorite Number you would like to delete:"
        
        favorite = view_favorites.find_by(favorite_id: get_user_input)
        favorite.delete
        puts "This Favorite quote is deleted"
        sleep(2)
        menu
    end


    private 
    def get_user_input
        @input = gets.chomp
    end
       
   

end




