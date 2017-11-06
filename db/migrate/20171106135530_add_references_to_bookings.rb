class AddReferencesToBookings < ActiveRecord::Migration[5.1]
  def change
    change_table :bookings do |t|
      t.references :destination, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
