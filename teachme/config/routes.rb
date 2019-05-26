Rails.application.routes.draw do
  resources :reviews
  resources :profiles
  resources :lessons
  resources :users
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
