class AddBookedToDestination < ActiveRecord::Migration[5.1]
  def change
    add_column :destinations, :booked, :boolean
  end
end
