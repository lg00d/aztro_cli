class AztroCli::CLI
    attr_accessor :user_sign, :user_object
    attr_reader :api_data, :sun_signs

    def initialize
        @sun_signs = ["aquarius", "pisces", "aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpio", "sagittarius", "capricorn"]
    @api_data = []
        sun_signs.each do |sign| 
            data = API.get_data(sign)
            sunsign_object = SunSign.new(sign, data)
            @api_data << sunsign_object
        end
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

    def features
        puts "enter command:"

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

    def get_horoscope
        puts "please enter your sign"
        input = gets.strip.downcase

        if (sun_signs.include?(input))
            puts "That's a valid sign"
            @user_sign = input
           selected_sign = api_data.select do |sign| 
                sign.sign_name == user_sign 
            end
            puts selected_sign
            @user_object = selected_sign.first
            puts "#{user_object.date_range}, #{user_object.description}"
            features
        else
            puts "sorry, that's not a valid sign"
            get_horoscope()
        end

    end

    def current_date
          puts "#{user_object.current_date}"
       menu
   end

   def compatibility
         puts "#{user_object.compatibility}"
       features
   end

   def mood
       puts "#{user_object.mood}"
       features
   end

   def color
       puts "#{user_object.color}"
       features
   end

   def lucky_number
       puts "#{user_object.lucky_number}"
       features
   end

   def lucky_time
       puts "#{user_object.lucky_time}"
       features
   end
end