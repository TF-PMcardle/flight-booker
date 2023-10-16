class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.integer :DepAirportID
      t.integer :ArrAirportID
      t.time :TakeoffTime
      t.float :Duration

      t.timestamps
    end
  end
end
