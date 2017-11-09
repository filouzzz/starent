Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  root to: 'pages#home'
  get '/desinations/display_unbooked_destinations', to: 'destinations#display_unbooked_destinations'

  resources :destinations, only: [:create, :edit, :index, :destroy, :show, :new,] do
    resources :bookings, only: [:index, :new, :create, :show]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
