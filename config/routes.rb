Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  root to: 'pages#home'
  get '/desinations/display_unbooked_destinations', to: 'destinations#display_unbooked_destinations'
  get '/bookings/index', to: 'bookings#index'
  resources :destinations, only: [:create, :edit, :index, :destroy, :show, :new,:update] do
    resources :bookings, only: [:new, :create, :show,:destroy]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
