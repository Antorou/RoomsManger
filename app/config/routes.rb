Rails.application.routes.draw do
  root "pages#home"
  resources :hotels
  resources :rooms, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  devise_for :users
end
