class AddDefaultValueToNilForBookedDestination < ActiveRecord::Migration[5.1]
  def change
    change_column :destinations, :booked, :boolean, default: false
  end
end
