class CreateCardRarities < ActiveRecord::Migration[5.1]
  def change
    create_table :card_rarities do |t|
      t.string :name
    end

    add_reference :cards, :card_rarity, index: true
  end
end
