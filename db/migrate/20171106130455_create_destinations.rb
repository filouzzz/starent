class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :planet_type
      t.integer :distance
      t.string :name
      t.integer :price
      t.string :weather
      t.string :landscape_type
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
