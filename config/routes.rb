Rails.application.routes.draw do
  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/update'

  get 'bookings/edit'

  get 'bookings/destroy'

  get 'bookings/index'

  get 'bookings/show'

  devise_for :users
  root to: 'pages#home'
  resources :destinations do
    resources :bookings
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
