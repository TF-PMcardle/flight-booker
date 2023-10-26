class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.references :dep_airport, null: false
      t.references :arr_airport, null: false

      t.datetime :date_time
      t.string :duration

      t.timestamps
    end

  add_foreign_key :flights, :airports, column: :dep_airport_id
  add_foreign_key :flights, :airports, column: :arr_airport_id
  end
end
