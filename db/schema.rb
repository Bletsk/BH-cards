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

ActiveRecord::Schema.define(version: 20190316164342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "artists", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "value", null: false
    t.index ["value"], name: "index_artists_on_value"
  end

  create_table "card_sets", force: :cascade do |t|
    t.string "value", null: false
    t.index ["value"], name: "index_card_sets_on_value"
  end

  create_table "card_types", force: :cascade do |t|
    t.string "value", null: false
    t.index ["value"], name: "index_card_types_on_value"
  end

  create_table "cards", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title", null: false
    t.text "image_url", null: false
    t.integer "cost", null: false
    t.integer "attack", default: 0, null: false
    t.integer "health", default: 0, null: false
    t.float "draft_rating", default: 2.5, null: false
    t.text "card_text", default: ""
    t.text "flavour_text", default: ""
    t.boolean "dropped_from_booster", default: true
    t.uuid "artist_id", null: false
    t.integer "card_set_id", null: false
    t.integer "rarity_id", null: false
    t.integer "card_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_cards_on_artist_id"
    t.index ["attack"], name: "index_cards_on_attack"
    t.index ["card_set_id"], name: "index_cards_on_card_set_id"
    t.index ["card_type_id"], name: "index_cards_on_card_type_id"
    t.index ["cost"], name: "index_cards_on_cost"
    t.index ["dropped_from_booster"], name: "index_cards_on_dropped_from_booster"
    t.index ["health"], name: "index_cards_on_health"
    t.index ["rarity_id"], name: "index_cards_on_rarity_id"
    t.index ["title"], name: "index_cards_on_title"
  end

  create_table "rarities", force: :cascade do |t|
    t.string "value", null: false
    t.index ["value"], name: "index_rarities_on_value"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "fname", default: ""
    t.string "lname", default: ""
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "lower((email)::text)", name: "index_unique_email_on_users", unique: true
    t.index ["fname"], name: "index_users_on_fname"
    t.index ["lname"], name: "index_users_on_lname"
  end

  add_foreign_key "cards", "artists", on_delete: :restrict
  add_foreign_key "cards", "card_sets", on_delete: :restrict
  add_foreign_key "cards", "card_types", on_delete: :restrict
  add_foreign_key "cards", "rarities", on_delete: :restrict
end
