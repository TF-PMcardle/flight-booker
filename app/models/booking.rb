class Booking < ApplicationRecord
    belongs_to :flight, :class_name => "CreateFlight", :foreign_key => 'flightid'
end
