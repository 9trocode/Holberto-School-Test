class CreateLibraryLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :library_locations do |t|
      t.string :name
      t.string :city
      t.string :ref
      t.string :location_desc
      t.timestamps
    end
    add_index :library_locations, :name, unique: true
    add_index :library_locations, :ref, unique: true
  end
end
