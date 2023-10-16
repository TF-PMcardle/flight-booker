Rails.application.routes.draw do
 get "search", to: "search#index"

 get "/", to: "main#index"
end
