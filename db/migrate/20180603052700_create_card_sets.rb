class CreateCardSets < ActiveRecord::Migration[5.1]
  def change
    create_table :card_sets do |t|
    	t.string :name, null: false, index: true
    end

    add_reference :cards, :card_set, index: true
  end
end
