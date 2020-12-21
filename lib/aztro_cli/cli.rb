class AztroCli::CLI
    attr_accessor :user_sign
    attr_reader :api_data

    def initialize
        sun_signs = ["aquarius", "pisces", "aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpio", "sagittarius", "capricorn"]
    
        sun_signs.each do |sign| 
            data = API.get_data(sign)
           sunsign_object = sunsign.new(name, data)
            api_data << sunsign_object
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
end