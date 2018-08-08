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

ActiveRecord::Schema.define(version: 20180801160941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_classes", force: :cascade do |t|
    t.string "name"
  end

  create_table "card_classes_cards", id: false, force: :cascade do |t|
    t.bigint "card_class_id"
    t.bigint "card_id"
    t.index ["card_class_id"], name: "index_card_classes_cards_on_card_class_id"
    t.index ["card_id"], name: "index_card_classes_cards_on_card_id"
  end

  create_table "card_rarities", force: :cascade do |t|
    t.string "name"
  end

  create_table "card_sets", force: :cascade do |t|
    t.string "name"
  end

  create_table "card_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "card_url"
    t.integer "cost", default: 0
    t.integer "attack", default: 0
    t.integer "health", default: 0
    t.string "card_text", default: ""
    t.string "flavour_text", default: ""
    t.float "rate", default: 2.5
    t.boolean "dropped_from_booster", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "card_set_id"
    t.bigint "card_type_id"
    t.bigint "card_rarity_id"
    t.index ["card_rarity_id"], name: "index_cards_on_card_rarity_id"
    t.index ["card_set_id"], name: "index_cards_on_card_set_id"
    t.index ["card_type_id"], name: "index_cards_on_card_type_id"
  end

  create_table "cards_elements", id: false, force: :cascade do |t|
    t.bigint "element_id"
    t.bigint "card_id"
    t.index ["card_id"], name: "index_cards_elements_on_card_id"
    t.index ["element_id"], name: "index_cards_elements_on_element_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
  end

end
