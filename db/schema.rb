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

ActiveRecord::Schema.define(version: 20181211213154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "card_classes", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "card_classes_cards", id: false, force: :cascade do |t|
    t.bigint "card_class_id"
    t.uuid "card_id"
    t.index ["card_class_id"], name: "index_card_classes_cards_on_card_class_id"
    t.index ["card_id"], name: "index_card_classes_cards_on_card_id"
  end

  create_table "card_rarities", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "card_sets", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "card_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "card_url", null: false
    t.integer "cost", default: 0
    t.integer "attack", default: 0
    t.integer "health", default: 0
    t.string "card_text", default: ""
    t.string "flavour_text", default: ""
    t.float "rate", default: 2.5
    t.boolean "dropped_from_booster", default: false
    t.bigint "card_set_id"
    t.bigint "card_type_id"
    t.bigint "card_rarity_id"
    t.index ["card_rarity_id"], name: "index_cards_on_card_rarity_id"
    t.index ["card_set_id"], name: "index_cards_on_card_set_id"
    t.index ["card_type_id"], name: "index_cards_on_card_type_id"
  end

  create_table "cards_factions", id: false, force: :cascade do |t|
    t.bigint "faction_id"
    t.uuid "card_id"
    t.index ["card_id"], name: "index_cards_factions_on_card_id"
    t.index ["faction_id"], name: "index_cards_factions_on_faction_id"
  end

  create_table "factions", force: :cascade do |t|
    t.string "name", null: false
  end

end
