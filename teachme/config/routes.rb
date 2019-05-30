Rails.application.routes.draw do
  root 'sessions#new'
  # resources :reviews
  # resources :lessons
  resources :users
  resources :profiles
  resources :sessions

  get 'hello_world', to: 'hello_world#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
