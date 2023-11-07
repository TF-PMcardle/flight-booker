class Passenger < ApplicationRecord
    has_many :bookings, class_name: 'Booking', foreign_key: 'passenger_id'
end
