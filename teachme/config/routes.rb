Rails.application.routes.draw do
  root 'users#new'
  # resources :reviews
  resources :lessons
  resources :users
  resources :profiles

  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
