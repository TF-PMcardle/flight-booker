class Booking < ApplicationRecord
    belongs_to :passenger, class_name: 'Passenger'
    belongs_to :flight, class_name: 'Flight'
    
end
