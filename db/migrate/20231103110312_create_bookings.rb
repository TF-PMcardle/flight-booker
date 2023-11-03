class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :flight_id
      t.string :passenger_id

      t.timestamps
    end 


    add_foreign_key :bookings, :flights, column: :flight_id
    add_foreign_key :bookings, :passengers, column: :passenger_id
  end
end
