# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_10_25_094850) do
  create_table "bookings", force: :cascade do |t|
    t.string "flightid"
    t.string "fname"
    t.string "sname"
    t.string "email"
    t.string "passportnum"
    t.datetime "dateofbirth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.resources "booking"
    t.resources "create_flights"
    t.string "flightid"
    t.string "passengerid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "create_flights", force: :cascade do |t|
    t.string "depairport"
    t.string "arrairport"
    t.datetime "datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "depairport"
    t.string "arrairport"
    t.datetime "datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
