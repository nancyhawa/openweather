class CreateWeatherDataPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :weather_data_points do |t|
      t.string :zipcode
      t.text :description
      t.decimal :temperature
      t.decimal :wind_speed
      t.decimal :wind_direction
      t.decimal :humidity
      t.string :city
      t.datetime :timestamp

      t.timestamps
    end
  end
end
