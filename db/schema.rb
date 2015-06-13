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

ActiveRecord::Schema.define(version: 20150613165344) do

  create_table "card_behaviors", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.text     "answer",      null: false
    t.string   "image_url"
    t.text     "description", null: false
    t.integer  "deck_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string   "name",       limit: 30, null: false
    t.string   "type"
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "deck_id"
    t.integer  "user_id"
    t.integer  "right"
    t.integer  "wrong"
    t.integer  "card_idx"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "games", ["deck_id"], name: "index_games_on_deck_id"
  add_index "games", ["user_id"], name: "index_games_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",         limit: 50, null: false
    t.string   "password_hash",            null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
