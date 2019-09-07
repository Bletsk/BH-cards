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

ActiveRecord::Schema.define(version: 20_180_616_215_203) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'card_sets', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'card_types', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'cards', force: :cascade do |t|
    t.string 'name'
    t.string 'rarity'
    t.string 'card_url'
    t.integer 'rate'
    t.integer 'cost'
    t.boolean 'dropped_from_booster'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'card_set_id'
    t.bigint 'card_type_id'
    t.index ['card_set_id'], name: 'index_cards_on_card_set_id'
    t.index ['card_type_id'], name: 'index_cards_on_card_type_id'
  end

  create_table 'cards_elements', id: false, force: :cascade do |t|
    t.bigint 'element_id', null: false
    t.bigint 'card_id', null: false
    t.index %w[card_id element_id], name: 'index_cards_elements_on_card_id_and_element_id'
  end

  create_table 'elements', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
