Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :users, only:[ :index, :show, :edit, :update ] do
    resources :bookings
  end
end
