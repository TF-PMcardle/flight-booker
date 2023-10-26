class Book < ApplicationRecord
    belongs_to :create_flight, :class_name => "CreateFlight", :foreign_key => 'flightid'
    belongs_to :booking, :class_name => "Booking", :foreign_key => 'bookingid'
end
