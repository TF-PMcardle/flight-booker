class Booking < ApplicationRecord
    has_many :bookings, :class_name => "Book"
end
