Rails.application.routes.draw do
  resources :kicks
  get "favorites", to: "favorites#index"
  root "kicks#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
