class SunSign
    attr_accessor :sign_name, :mood, :compatibility, :color, :lucky_number, :lucky_time, :current_date

    def initialize(name, data)
        @name = name
        @sign_name = 
        @mood = data["mood"]
        @compatibility = data["compatibility"]
        @color = data["color"]
        @lucky_number = data["lucky_number"]
        @lucky_time = data["lucky_time"]
        @current_date = data["current_date"]
    end
end