require 'pry'


class Cli
    attr_reader :input, :current_user

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
                puts "Invalid input, please try again"
                menu
            end
        end
    end

    def welcome
        puts "Let's Get Inspired!!!"
    sleep(1.5)
   
    end

    def login
        puts "Please enter your name to login:"
        get_user_input
        @current_user = User.find_or_create_by(:name => @input)
        puts "Welcome #{current_user.name}!!!"
        sleep(2)
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
        sleep(1)
        puts "And remember life is what you make it..."
        sleep(1.5)
        puts "Make it great #{current_user.name}!!!"
    end

    

    def view_quotes
        puts "--- Quotes ---"
        puts ""
          Quote.all.each do |quote|
          puts "#{quote.id}. #{quote.quotation} by: #{quote.author}"
          end
        menu
    end

    def add_quote_to_favorites
        params = {}

        puts "Enter the number of the Quote you would like to save:"
        params[:name] = @input
        params[:user_id] = current_user.id
        puts "Enter the number associated with the quote you would like to save to favorites"
        params[:quote_id] = @input
        favorite = current_user.favorites.build(params)
        favorite.save
        puts "Added Quote to your Favorite..."
        sleep(2)
        menu
    end
   
    def view_favorites
         Favorite.find_by(user_id = current_user.id)
    end

    def modify_favorite
        
        view_favorites
        puts ""
        puts ""
        puts "Select the Favorite Number you would like to change:"
        
        favorite = Favorite.find_by(favorite_id: @input)
        puts "Change Favorite name:"
        favorite.update(name: @input)
        puts "Favorite Name is changed"

        sleep(2)
        menu
    end

    def delete_favorite
        view_favorites
        puts ""
        puts ""
        puts "Select the Favorite Number you would like to delete:"
        favorite = Favorite.find_by(favorite_id: @input)
        favorite.destroy
        puts "This Favorite quote is deleted"
        sleep(2)
        menu
    end


    private 
    def get_user_input
        @input = gets.chomp
    end
       
   

end




###### CREATE ######
    # def post_new
    #     params = {}
      
    #     puts "Please enter the title of your new post:"
    #     params[:title] = user_input
    
    #     puts "Please enter the content of your new post:"
    #     params[:content] = user_input
    
    #     # 2. Let's actually instantiate the post already associated with the
    #     # current_user
    #     post = current_user.posts.build(params)
    #     post.save # Insert the Post with the author_id FK
    #     puts "Saved Post ##{post.id}..."
    #     menu
    #   end
    
    
    ##### READ #####
    # def post_show
    #     puts "Loading Post #{last_input}..."
    #     # When we load this post, it 100% belongs to the current_user
    #     # begin
    #     #   post = current_user.posts.find(last_input)
    #     if post = current_user.posts.find_by(:id => last_input)
    #       puts "--- #{post.id} --- #{post.title}"
    #       puts
    #       puts post.content
    #     else
    #     # rescue ActiveRecord::RecordNotFound
    #       puts "Can't find a post with ID #{last_input} for you..."
    #     end
    #     menu
    #   end