class CreateCards < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'pgcrypto'

    create_table :cards, id: :uuid do |t|
  		t.string :name, null: false, index: true
  		t.string :card_url, null: false
  		t.integer :cost, default: 0, index: true
      t.integer :attack, default: 0, index: true
      t.integer :health, default: 0, index: true
      t.string :card_text, default: ""
      t.string :flavour_text, default: ""
      t.float :rate, default: 2.5
      t.boolean :dropped_from_booster, default: false, index: true
    end
  end
end
