Rails.application.routes.draw do
 get "search", to: "search#index"

 get "about", to: "about#index"

 get "flights", to: "flight#new"

 root to: "main#index"

end
