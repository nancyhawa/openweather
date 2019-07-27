# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_27_194651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "weather_data_points", force: :cascade do |t|
    t.string "zipcode"
    t.text "description"
    t.decimal "temperature"
    t.decimal "wind_speed"
    t.decimal "wind_direction"
    t.decimal "humidity"
    t.string "city"
    t.datetime "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
