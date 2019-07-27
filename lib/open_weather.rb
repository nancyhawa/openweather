require 'net/http'
require 'uri'

module OpenWeather
	def get_weather_by_zipcode(zipcode)
		uri = "https://api.openweathermap.org/data/2.5/weather?zip=#{zipcode},us&APPID=#{Rails.application.credentials.open_weather_api_key}"
	    response = Net::HTTP.get_response(URI.parse(uri))
	    response[:zipcode] = zipcode
	    data = JSON.parse(response.body)
	    if self.validate(data)
	    	return data
	    else
	    	return false
	    end
	end

	def validate(data)
		!!data["weather"]
	end
end

