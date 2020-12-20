class AztroCli::CLI
    attr_accessor :user_sign
    attr_reader :sun_signs

    def initialize
        @sun_signs = ["aquarius", "pisces", "aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpio", "sagittarius", "capricorn"]
        call
    end
end