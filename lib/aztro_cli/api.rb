class API

    def self.get_data(sign)
            response = RestClient.post("https://aztro.sameerkumar.website/?sign=#{sign}&day=today", {})
            aztro_data = JSON.parse(response.body)
        return aztro_data
    end
end