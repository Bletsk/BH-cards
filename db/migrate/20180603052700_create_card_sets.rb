class CreateCardSets < ActiveRecord::Migration[5.1]
  def change
    create_table :card_sets do |t|
    	t.string :name
      t.timestamps
    end

    add_reference :card_sets, :cards, index: true
  end
end
