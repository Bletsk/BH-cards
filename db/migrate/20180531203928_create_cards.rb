class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
    		t.string :name
    		t.string :card_url
    		t.integer :cost, default: 0
        t.integer :attack, default: 0
        t.integer :health, default: 0
        t.string :card_text, default: ""
        t.string :flavour_text, default: ""
        t.float :rate, default: 2.5
        t.boolean :dropped_from_booster, default: false
      t.timestamps
    end
  end
end
