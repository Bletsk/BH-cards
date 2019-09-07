# frozen_string_literal: true

class CreateCardTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :card_types do |t|
      t.string :name
      t.timestamps
    end

    add_reference :cards, :card_type, index: true
  end
end
