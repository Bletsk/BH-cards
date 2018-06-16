class CreateJoinTableElementCard < ActiveRecord::Migration[5.1]
  def change
    create_join_table :elements, :cards do |t|
      # t.index [:element_id, :card_id]
      t.index [:card_id, :element_id]
    end
  end
end
