Rails.application.routes.draw do
  root 'sessions#new'
  resources :users, except: :index
  resources :profiles do
    resources :lessons, only: :create
  end
  post '/book/:lesson_id', to: 'lessons#book_lesson', as: 'book_lesson' #book_lesson_path(lesson_id: ...)
  resources :lessons, except: :create
  resources :reviews
  resources :sessions, only: [:create]
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
end
