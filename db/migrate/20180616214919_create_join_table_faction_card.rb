class CreateJoinTableFactionCard < ActiveRecord::Migration[5.1]
  def change
    create_join_table :factions, :cards do |t|
      t.belongs_to :faction, index: true
      t.belongs_to :card, type: :uuid, index: true
    end
  end
end
