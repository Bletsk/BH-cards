class CreateFactions < ActiveRecord::Migration[5.1]
  def change
    create_table :factions do |t|
    	t.string :name, null: false, index: true
    end
  end
end
