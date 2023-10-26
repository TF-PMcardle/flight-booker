class Airport < ApplicationRecord
    has_many :dep_airports, class_name: 'Flight', foreign_key: 'dep_airport_id'
    has_many :arr_airports, class_name: 'Flight', foreign_key: 'arr_airport_id'
end
