class CreateCardClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :card_classes do |t|
      t.string :name, null: false, index: true
    end

    create_join_table :card_classes, :cards do |t|
      t.belongs_to :card_class, index: true
      t.belongs_to :card, type: :uuid, index: true
    end
  end
end
