class Flight < ApplicationRecord
    belongs_to :dep_airport, class_name: 'Airport'
    belongs_to :arr_airport, class_name: 'Airport'

    has_many :bookings, class_name: 'Booking', foreign_key: 'flight_id'




    def date_time_formatted
        date_time.strftime("%F %R")
      end
end