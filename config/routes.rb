Rails.application.routes.draw do
  devise_for :users

  root "splash#index"

  resources :groups, only: [:index, :new, :show, :create]
  resources :entities, only: [:new, :show, :create]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'completed', to: 'entities/completed'
  # Defines the root path route ("/")

end
