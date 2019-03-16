class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'pgcrypto'

    create_table :artists, id: :uuid do |t|
      t.string :value, index: true, unique: true, nil: false
    end
  end
end
