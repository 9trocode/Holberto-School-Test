class CreateLibraryLocation < ActiveRecord::Migration[5.1]
  def change
    create_table :library_location do |t|
      t.string :name
      t.string :city
      t.string :ref
      t.string :location_desc

      t.timestamps
    end
    add_index :library_location, :name, unique: true
    add_index :library_location, :ref, unique: true
  end
end
