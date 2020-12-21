class SunSign
    attr_accessor :sign_name, :mood, :compatibility, :color, :lucky_number, :lucky_time, :current_date, :date_range, :description

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
end