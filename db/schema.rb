# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151109233121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "likes", force: :cascade do |t|
    t.string   "vineyard_tours"
    t.string   "cave_tours"
    t.string   "great_views"
    t.string   "food_pairing"
    t.string   "groups"
    t.string   "kid_friendly"
    t.string   "dog_friendly"
    t.string   "bachelorettes"
    t.string   "staff_picks"
    t.string   "organic_wineries"
    t.string   "architecture"
    t.string   "top_reds"
    t.string   "top_whites"
    t.string   "sparkling_wines"
    t.string   "dessert_wines"
    t.string   "picnic"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
  end

  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "purchases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.boolean  "available_now"
    t.date     "arrival_date"
    t.date     "departure_date"
    t.integer  "number_of_people"
    t.string   "start_location"
    t.string   "end_location"
    t.integer  "price_range"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "userpicks", force: :cascade do |t|
    t.integer "userpick"
    t.integer "like_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number",    limit: 12
    t.string   "email"
    t.string   "password_digest"
    t.string   "contact_text"
    t.string   "contact_email"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
