class Booking < ApplicationRecord
    has_many :books, :class_name => "Book"
    has_many :create_flights, through: :books
end
