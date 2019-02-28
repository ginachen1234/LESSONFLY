Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :users, only:[ :index, :show ] do
    resources :bookings, except: [ :destroy ]
  end
  resources :bookings, only: [:destroy]
end

