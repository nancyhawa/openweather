require 'net/http'
require 'uri'

module OpenWeather
	def get_weather_by_zipcode(zipcode)
		uri = "https://api.openweathermap.org/data/2.5/weather?zip=#{zipcode},us&APPID=#{Rails.application.credentials.open_weather_api_key}"
	    response = Net::HTTP.get_response(URI.parse(uri))
	    JSON.Parse(response.body)
	end
end