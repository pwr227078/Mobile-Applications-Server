Rails.application.routes.draw do
  resources :refuellings
  resources :cars
  resources :petrol_stations
  resources :users

  root to: 'static#main'
end
