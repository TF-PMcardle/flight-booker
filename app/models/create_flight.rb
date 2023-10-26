class CreateFlight < ApplicationRecord
    has_many :books, :class_name => "Book"
    has_many :bookings, through: :books
end
