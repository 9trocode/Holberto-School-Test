class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :ref
      t.string :description

      t.timestamps
    end
    add_index :categories, :name, unique: true
    add_index :categories, :ref, unique: true
  end
end
