
class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, limit: 20
      t.string :email
      t.string :address
      t.string :phone
      t.string :profile_url
      t.string :address
      t.string :city
      t.string :password_digest
      t.boolean :is_admin
      t.boolean :is_deleted
      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
