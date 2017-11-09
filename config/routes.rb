Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  get '/desinations/display_unbooked_destinations', to: 'destinations#display_unbooked_destinations'
  root to: 'destinations#index'

  resources :destinations, only: [:create, :index, :destroy, :show, :new,] do
    resources :bookings, only: [:index, :new, :create, :show]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
