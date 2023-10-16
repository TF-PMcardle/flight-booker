Rails.application.routes.draw do
 get "search", to: "search#index"

 root to: "main#index"
end
