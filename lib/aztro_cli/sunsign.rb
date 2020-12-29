class SunSign
    attr_accessor :sign_name, :mood, :compatibility, :color, :lucky_number, :lucky_time, :current_date, :date_range, :description, :sun_signs
   @@sun_signs = ["aquarius", "pisces", "aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpio", "sagittarius", "capricorn"]
    
   
   def initialize(name, data)
        @sign_name = name
        @mood = data["mood"]
        @compatibility = data["compatibility"]
        @color = data["color"]
        @lucky_number = data["lucky_number"]
        @lucky_time = data["lucky_time"]
        @current_date = data["current_date"]
        @date_range = data["date_range"]
        @description = data["description"]
    end

    def self.get_api_data
        all = []
        @@sun_signs.each do |sign| 
            data = API.get_data(sign)
            sunsign_object = SunSign.new(sign, data)
            all << sunsign_object
        end
    end
end