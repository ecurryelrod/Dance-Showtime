Rails.application.routes.draw do
  root 'static#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # delete '/logout', to: 'sessions#destroy'

  # resources :categories
  resources :venues, only: [:show]
  # resources :performances
  resources :users, only: [:show] do
    resources :performances, only: [:new, :create, :show]
  end
  resources :performances, only: [:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  # root "articles#index"
end
