class CreateRarities < ActiveRecord::Migration[5.1]
  def change
    create_table :rarities do |t|
      t.string :value, index: true, unique: true, nil: false
    end
  end
end
