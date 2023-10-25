class CreateFlight < ApplicationRecord
    has_many :bookings, :class_name => "Book"
end
