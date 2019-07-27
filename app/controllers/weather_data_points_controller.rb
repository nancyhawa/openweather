include OpenWeather
class WeatherDataPointsController < ApplicationController

	def new
	end

	def create

		weather_data = OpenWeather::get_weather_by_zipcode(params[:weather_data_point][:zipcode])
		puts "weather_data"
		puts weather_data
		if !weather_data
			flash.now[:alert] = "Invalid input"
	     	render "new"
	    else

			@weather_data_point = WeatherDataPoint.new_from_open_weather_data(weather_data)

		    if @weather_data_point.save
		     	render "new"
		    else
		    	flash.now[:alert] = "Invalid input"
		     	render "new"
		    end
		end

	end
end
