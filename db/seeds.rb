# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Airport.destroy_all
Flight.destroy_all

Airport.create( airport_code: 'BFS')
Airport.create( airport_code: 'BHD')
Airport.create( airport_code: 'DUB')
Airport.create( airport_code: 'LDH')
Airport.create( airport_code: 'LDS')
Airport.create( airport_code: 'EDI')
Airport.create( airport_code: 'CWL')

Flight.create( dep_airport_id: '1', arr_airport_id: '2', date_time: '2023-10-29 15:04:00', duration: '45')
Flight.create( dep_airport_id: '1', arr_airport_id: '3', date_time: '2023-10-21 16:17:00', duration: '30')
Flight.create( dep_airport_id: '1', arr_airport_id: '4', date_time: '2023-11-30 16:17:00', duration: '60')
Flight.create( dep_airport_id: '1', arr_airport_id: '5', date_time: '2024-01-19 11:47:00', duration: '40')
Flight.create( dep_airport_id: '1', arr_airport_id: '6', date_time: '2024-04-25 11:48:00', duration: '50')
Flight.create( dep_airport_id: '1', arr_airport_id: '7', date_time: '2023-12-19 11:49:00', duration: '55') 

Flight.create( dep_airport_id: '2', arr_airport_id: '1', date_time: '2023-10-29 15:04:00', duration: '45')
Flight.create( dep_airport_id: '2', arr_airport_id: '3', date_time: '2023-10-21 16:17:00', duration: '30')
Flight.create( dep_airport_id: '2', arr_airport_id: '4', date_time: '2023-11-30 16:17:00', duration: '60')
Flight.create( dep_airport_id: '2', arr_airport_id: '5', date_time: '2024-01-19 11:47:00', duration: '40')
Flight.create( dep_airport_id: '2', arr_airport_id: '6', date_time: '2024-04-25 11:48:00', duration: '50')
Flight.create( dep_airport_id: '2', arr_airport_id: '7', date_time: '2023-12-19 11:49:00', duration: '55') 

Flight.create( dep_airport_id: '3', arr_airport_id: '1', date_time: '2023-10-29 15:04:00', duration: '45')
Flight.create( dep_airport_id: '3', arr_airport_id: '2', date_time: '2023-10-21 16:17:00', duration: '30')
Flight.create( dep_airport_id: '3', arr_airport_id: '4', date_time: '2023-11-30 16:17:00', duration: '60')
Flight.create( dep_airport_id: '3', arr_airport_id: '5', date_time: '2024-01-19 11:47:00', duration: '40')
Flight.create( dep_airport_id: '3', arr_airport_id: '6', date_time: '2024-04-25 11:48:00', duration: '50')
Flight.create( dep_airport_id: '3', arr_airport_id: '7', date_time: '2023-12-19 11:49:00', duration: '55') 

Flight.create( dep_airport_id: '4', arr_airport_id: '1', date_time: '2023-10-29 15:04:00', duration: '45')
Flight.create( dep_airport_id: '4', arr_airport_id: '2', date_time: '2023-10-21 16:17:00', duration: '30')
Flight.create( dep_airport_id: '4', arr_airport_id: '3', date_time: '2023-11-30 16:17:00', duration: '60')
Flight.create( dep_airport_id: '4', arr_airport_id: '5', date_time: '2024-01-19 11:47:00', duration: '40')
Flight.create( dep_airport_id: '4', arr_airport_id: '6', date_time: '2024-04-25 11:48:00', duration: '50')
Flight.create( dep_airport_id: '4', arr_airport_id: '7', date_time: '2023-12-19 11:49:00', duration: '55') 

Flight.create( dep_airport_id: '5', arr_airport_id: '1', date_time: '2023-10-29 15:04:00', duration: '45')
Flight.create( dep_airport_id: '5', arr_airport_id: '2', date_time: '2023-10-21 16:17:00', duration: '30')
Flight.create( dep_airport_id: '5', arr_airport_id: '3', date_time: '2023-11-30 16:17:00', duration: '60')
Flight.create( dep_airport_id: '5', arr_airport_id: '4', date_time: '2024-01-19 11:47:00', duration: '40')
Flight.create( dep_airport_id: '5', arr_airport_id: '6', date_time: '2024-04-25 11:48:00', duration: '50')
Flight.create( dep_airport_id: '5', arr_airport_id: '7', date_time: '2023-12-19 11:49:00', duration: '55') 

Flight.create( dep_airport_id: '6', arr_airport_id: '1', date_time: '2023-10-29 15:04:00', duration: '45')
Flight.create( dep_airport_id: '6', arr_airport_id: '2', date_time: '2023-10-21 16:17:00', duration: '30')
Flight.create( dep_airport_id: '6', arr_airport_id: '3', date_time: '2023-11-30 16:17:00', duration: '60')
Flight.create( dep_airport_id: '6', arr_airport_id: '4', date_time: '2024-01-19 11:47:00', duration: '40')
Flight.create( dep_airport_id: '6', arr_airport_id: '5', date_time: '2024-04-25 11:48:00', duration: '50')
Flight.create( dep_airport_id: '6', arr_airport_id: '7', date_time: '2023-12-19 11:49:00', duration: '55') 

Flight.create( dep_airport_id: '7', arr_airport_id: '1', date_time: '2023-10-29 15:04:00', duration: '45')
Flight.create( dep_airport_id: '7', arr_airport_id: '2', date_time: '2023-10-21 16:17:00', duration: '30')
Flight.create( dep_airport_id: '7', arr_airport_id: '3', date_time: '2023-11-30 16:17:00', duration: '60')
Flight.create( dep_airport_id: '7', arr_airport_id: '4', date_time: '2024-01-19 11:47:00', duration: '40')
Flight.create( dep_airport_id: '7', arr_airport_id: '5', date_time: '2024-04-25 11:48:00', duration: '50')
Flight.create( dep_airport_id: '7', arr_airport_id: '6', date_time: '2023-12-19 11:49:00', duration: '55') 
