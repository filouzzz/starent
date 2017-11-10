class AddSeedPhotoToDestinations < ActiveRecord::Migration[5.1]
  def change
    add_column :destinations, :seed_photo, :string
  end
end
