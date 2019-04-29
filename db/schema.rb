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

ActiveRecord::Schema.define(version: 2019_04_29_113550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_likes_on_restaurant_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.text "name"
    t.text "location"
    t.text "specialities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cuisine_id"
    t.text "images", default: [], array: true
    t.integer "contact"
    t.integer "phone"
    t.time "opening_hours"
    t.time "closing_hours"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "restaurant_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "image"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "password_digest"
    t.boolean "admin"
  end

  add_foreign_key "likes", "restaurants"
  add_foreign_key "likes", "users"
end
