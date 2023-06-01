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

ActiveRecord::Schema[7.0].define(version: 2023_05_31_121301) do
  create_table "restaurants", force: :cascade do |t|
    t.string "name", null: false
    t.text "address", null: false
    t.text "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "review"
    t.string "phone_number"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  end

  add_foreign_key "reviews", "restaurants"
end
