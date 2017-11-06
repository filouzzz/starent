Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :destinations, only: [:create, :index, :destroy] do
    resources :bookings
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
