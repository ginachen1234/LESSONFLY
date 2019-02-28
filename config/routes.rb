Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: :registrations }

  resources :users, only:[ :index, :show, :edit, :update ] do
   resources :bookings, except: [ :destroy ]
  end
  resources :bookings, only: [:destroy]
end

