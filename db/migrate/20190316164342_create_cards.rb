class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards, id: :uuid do |t|
      t.string :title, null: false, index: true
      t.text :image_url, null: false
      t.integer :cost, null: false, index: true
      t.integer :attack, null: false, default: 0, index: true
      t.integer :health, null: false, default: 0, index: true
      t.float :draft_rating, null: false, default: 2.5
      t.text :card_text, default: ''
      t.text :flavour_text, default: ''
      t.boolean :dropped_from_booster, default: true, index: true

      t.uuid :artist_id, null: false, index: true
      t.integer :card_set_id, null: false, index: true
      t.integer :rarity_id, null: false, index: true
      t.integer :card_type_id, null: false, index: true

      t.foreign_key :artists, on_delete: :restrict
      t.foreign_key :card_sets, on_delete: :restrict
      t.foreign_key :rarities, on_delete: :restrict
      t.foreign_key :card_types, on_delete: :restrict

      t.timestamps
    end
  end
end
