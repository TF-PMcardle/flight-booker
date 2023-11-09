class CreatePassengers < ActiveRecord::Migration[7.1]
  def change
    create_table :passengers do |t|
      t.string :booking_id
      t.string :fname
      t.string :sname
      t.string :email

      t.timestamps
    end
  end
end
