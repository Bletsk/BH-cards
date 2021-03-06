# frozen_string_literal: true

class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.integer :rarity, index: true, null: false
      t.string :card_url
      t.integer :card_set, index: true, null: false
      t.integer :faction, index: true, null: false
      t.integer :pick_rate, null: false, default: 3
      t.integer :cost
      t.integer :site_id, null: false
      t.boolean :dropped_from_booster, null: false, default: true

      t.index :site_id, unique: true

      t.timestamps
    end
  end
end
