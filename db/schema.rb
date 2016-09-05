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

ActiveRecord::Schema.define(version: 20160904231323) do

  create_table "games", force: :cascade do |t|
    t.integer  "decks"
    t.boolean  "dealer_hit_on_soft_17"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "hands", force: :cascade do |t|
    t.integer  "player_value"
    t.integer  "dealer_card"
    t.boolean  "hard"
    t.boolean  "pair"
    t.integer  "game_id"
    t.string   "action"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["game_id"], name: "index_hands_on_game_id"
  end

end