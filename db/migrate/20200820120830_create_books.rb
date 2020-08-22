class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.bigint :categories_id
      t.bigint :libary_locations_id
      t.references :categories, foreign_key: true
      t.references :libary_locations, foreign_key: true

      t.timestamps
    end
  end
end