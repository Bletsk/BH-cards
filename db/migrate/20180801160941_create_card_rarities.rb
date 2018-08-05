class CreateCardRarities < ActiveRecord::Migration[5.1]
  def change
    create_table :card_rarities do |t|
      t.string :name
    end

    create_table :card_class do |t|
      t.string :name
    end

    create_join_table :card_classes, :cards do |t|
      t.belongs_to :card_class, index: true
      t.belongs_to :card, index: true
    end

    add_reference :cards, :card_rarity, index: true
  end
end
