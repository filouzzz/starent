class AddReferencesToBookings < ActiveRecord::Migration[5.1]
  def change

    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :destination, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end

  end
end
