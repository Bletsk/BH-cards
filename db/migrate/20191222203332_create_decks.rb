class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.string :name
      t.boolean :standard, null: false, default: false

      t.timestamps
    end

    create_table :deck_cards, id: false do |t|
      t.references :deck
      t.references :card
      t.integer :amount, null: false, default: 1
    end
    add_index :deck_cards, %i[deck_id card_id]
  end
end
