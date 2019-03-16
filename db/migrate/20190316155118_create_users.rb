class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :fname, index: true, default: ''
      t.string :lname, index: true, default: ''
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end

    reversible do |direction|
      direction.up do
        execute <<~'SQL'.freeze()
          CREATE UNIQUE INDEX index_unique_email_on_users
          ON users (LOWER(email));
        SQL

        execute <<~'SQL'.freeze()
          ALTER TABLE users
          ADD CONSTRAINT email_must_be_valid
          CHECK (email ~ '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$');
        SQL
      end

      direction.down do
        execute <<~'SQL'.freeze()
          ALTER TABLE users
          DROP CONSTRAINT email_must_be_valid;
        SQL

        execute <<~'SQL'.freeze()
          DROP INDEX index_unique_email_on_users;
        SQL
      end
    end
  end
end
