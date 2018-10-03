Rails.application.routes.draw do
  devise_for :users
  root to: 'visits#index'
  resources :visits
  resources :doctors
  resources :patients
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
