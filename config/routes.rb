Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users #, only: %i[create destroy update]
  resources :events, only: %i[create destroy update]
  resources :event_venues, only: %i[create destroy update]
  resources :tickets, only: %i[create destroy update]
end
