# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_180_531_203_928) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'cards', force: :cascade do |t|
    t.string 'title'
    t.integer 'rarity', null: false
    t.string 'card_url'
    t.integer 'card_set', null: false
    t.integer 'faction', null: false
    t.integer 'pick_rate', default: 3, null: false
    t.integer 'cost'
    t.integer 'site_id', null: false
    t.boolean 'dropped_from_booster', default: true, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['card_set'], name: 'index_cards_on_card_set'
    t.index ['faction'], name: 'index_cards_on_faction'
    t.index ['rarity'], name: 'index_cards_on_rarity'
    t.index ['site_id'], name: 'index_cards_on_site_id', unique: true
  end
end
