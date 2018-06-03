class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
    		t.string :name
    		t.string :rarity
    		t.string :card_url
    		t.string :card_type
    		t.integer :cost
        t.boolean :dropped_from_booster
      t.timestamps
    end
  end
end
