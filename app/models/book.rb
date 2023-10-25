class Book < ApplicationRecord
    belongs_to :flight, :class_name => "CreateFlight", :foreign_key => 'flightid'
    belongs_to :passenger, :class_name => "Booking", :foreign_key => 'bookingid'
end
