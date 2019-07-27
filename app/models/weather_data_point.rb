class WeatherDataPoint < ApplicationRecord
	
	# Consumes the JSON returned from the Openweather API
	def self.new_from_open_weather_data(data)
		WeatherDataPoint.new({
			:zipcode => data["zipcode"],
			:description => data["weather"][0]["description"],
			# :pressure => data["main"]["pressure"],
			:temperature => data["main"]["temp"],
			:wind_speed => data["wind"]["speed"],
			:wind_direction => data["wind"]["deg"],
			:humidity => data["main"]["humidity"],
			# :city_name => data["name"]
			})
	end



end
