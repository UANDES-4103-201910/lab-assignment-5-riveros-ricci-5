Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[create destroy update] do
    collection do
      get :user_with_most_tickets
    end
  end
  resources :events, only: %i[create destroy update] do
    collection do
      get :upcoming_events
    end
  end
  resources :event_venues, only: %i[create destroy update]
  resources :tickets, only: %i[create destroy update]
  resources :ticket_types
  resources :ticket_types do
    resources :tickets
  end
end
