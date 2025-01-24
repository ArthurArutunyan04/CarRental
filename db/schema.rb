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

ActiveRecord::Schema[8.0].define(version: 2025_01_24_221752) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "brand", null: false
    t.string "model", null: false
    t.integer "release_year", null: false
    t.decimal "price_per_day", precision: 10, scale: 2, default: "1.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.string "address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rents", force: :cascade do |t|
    t.datetime "rental_date", null: false
    t.datetime "return_date", null: false
    t.decimal "rental_cost", precision: 10, scale: 2, default: "0.0", null: false
    t.bigint "client_id", null: false
    t.bigint "car_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_rents_on_car_id"
    t.index ["client_id"], name: "index_rents_on_client_id"
  end

  add_foreign_key "rents", "cars", on_delete: :cascade
  add_foreign_key "rents", "clients", on_delete: :cascade
end
