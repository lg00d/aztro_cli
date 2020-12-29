class AztroCli::CLI
    attr_accessor :user_sign, :user_object

    def initialize
        @api_data = SunSign.get_api_data()
        call
    end

    def call
        puts "Welcome!"
        puts "To learn more about your sun sign, please enter 'start'"
        puts "To find your sun sign, please enter 'list'"
        puts "To exit, please enter 'exit'"
        menu
    end

    def menu
        loop do
            input = gets.strip.downcase
            if input == "start"
                get_horoscope
            elsif input == "list"
                list_signs
            elsif input == "exit"
                goodbye
            else
                invalid_entry
            end
        end
    end

    def features
        puts "To learn more about your sign,"
        loop  do
            puts "please enter: 'mood', 'compatibility', 'color', 'lucky number, 'lucky time', or 'exit'"
            input = gets.strip.downcase

            if input == "compatibility"
                compatibility
            elsif input == "mood"
                mood
            elsif input == "color"
                color
            elsif input == "lucky number"
                lucky_number
            elsif input == "lucky time"
                lucky_time
            elsif input == "exit"
                goodbye
            elsif
                invalid
            else
                menu
            end
        end
    end

    def get_horoscope
        puts "please enter your sign"
        input = gets.strip.downcase

        if (sun_signs.include?(input))
            puts "That's a valid sign"
            @user_sign = input
           selected_sign = api_data.select do |sign| 
                sign.sign_name == user_sign 
            end
            @user_object = selected_sign.first
            puts "#{user_object.current_date}, #{user_object.description}"
            features
        else
            puts "sorry, that's not a valid sign"
            get_horoscope()
        end

    end


   def compatibility
         puts "#{user_object.compatibility}"
       
   end

   def mood
       puts "#{user_object.mood}"
       
   end

   def color
       puts "#{user_object.color}"
       
   end

   def lucky_number
       puts "#{user_object.lucky_number}"
       
   end

   def lucky_time
       puts "#{user_object.lucky_time}"
       
   end

   def list_signs
    api_data.each do |sign| 
       
        puts "#{sign.sign_name} , #{sign.date_range}"
        
    end
    puts "===================================="
    puts "please enter 'start' to learn about your sign!"
    
    end

    def goodbye
        puts "Goodbye!"
        exit!
    end

    def invalid_entry
        puts "Invalid entry. Please try again."
    end

    def invalid
        puts "Invalid entry. Please try again."
        features    
    end
end