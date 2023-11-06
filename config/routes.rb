Rails.application.routes.draw do
  resources :create_flights
  resources :airports
  resources :bookings
 get "search", to: "search#index"

 get "passengers", to: "passengers#new"
 post "passengers", to: "passengers#create"

 get "flights", to: "flight#new"
 
 get "bookings", to: "bookings#index"

 get "bookings", to: "bookings#destroy"

 get "bookings/edit", to: "bookings#edit"
 post "bookings/edit", to: "bookings#update"

 get "flight", to: "flights#index"

 get "search_for_flight", to: "search_for_flight#search"
 post "search_for_flight", to: "bookings#create"


 root to: "search_for_flight#search"

end
