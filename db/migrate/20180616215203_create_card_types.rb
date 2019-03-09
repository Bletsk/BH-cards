class CreateCardTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :card_types do |t|
    	t.string :name, null: false, index: true
    end

    add_reference :cards, :card_type, index: true
  end
end
