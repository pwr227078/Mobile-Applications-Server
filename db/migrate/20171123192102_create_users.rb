class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nickname, unique: true
      t.string "password_digest"
      t.string :mail, unique: true
      t.boolean :is_admin, :default => 0

      t.timestamps
    end
  end
end
