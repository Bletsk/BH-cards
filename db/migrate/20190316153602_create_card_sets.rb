class CreateCardSets < ActiveRecord::Migration[5.1]
  def change
    create_table :card_sets do |t|
      t.string :value, index: true, unique: true, null: false
    end
  end
end
