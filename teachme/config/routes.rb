Rails.application.routes.draw do
  root 'sessions#new'
  resources :reviews
  resources :lessons, except: :create
  resources :users, except: :index
  get '/book/:lesson_id', to: 'lessons#book_lesson', as: 'book_lesson' #book_lesson_path(lesson_id: ...)
  resources :profiles do
    resources :lessons, only: :create
  end
  resources :sessions

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
