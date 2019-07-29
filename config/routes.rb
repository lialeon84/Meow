Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "grams#index"
     resources :grams do
      resources :picture, only: :create
end

resources :users, only: :show
end
