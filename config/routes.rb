Rails.application.routes.draw do
  resources :flights, only: :index
  resources :airlines, only: :show

  delete 'flights/:id/passengers/:passenger_id', to: 'flight_passengers#destroy'
end
