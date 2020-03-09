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

ActiveRecord::Schema.define(version: 2020_03_09_153218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "families", force: :cascade do |t|
    t.string "familyName"
    t.string "parentOneName"
    t.string "parentTwoName"
    t.integer "numberOfKids"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "family_id"
    t.string "happiness"
    t.string "integer"
    t.string "honesty"
    t.string "reliability"
    t.string "consistency"
    t.string "respect"
    t.string "benefits"
    t.string "kids"
    t.string "safetyAndComfort"
    t.string "pay"
    t.string "workAgain"
    t.string "string"
    t.string "reputation"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_ratings_on_family_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "happiness"
    t.integer "honesty"
    t.integer "reliability"
    t.integer "consistency"
    t.integer "respect"
    t.integer "benefits"
    t.integer "kids"
    t.integer "safetyAndComfort"
    t.integer "pay"
    t.string "workAgain"
    t.string "url"
    t.integer "reputation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "examples", "users"
  add_foreign_key "ratings", "families"
  add_foreign_key "ratings", "users"
end
