Rails.application.routes.draw do
  resources :refuellings
  resources :cars
  resources :petrol_stations
  resources :users

  root to: 'static#main'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
end
