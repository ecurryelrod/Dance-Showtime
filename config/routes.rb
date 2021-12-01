Rails.application.routes.draw do
  root 'static#home'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'
  
  get '/auth/google_oauth2/callback', to: 'sessions#create'

  resources :venues, only: [:show]

  resources :users, only: [:show] do
    resources :performances, only: [:new, :create, :show, :edit, :update]
  end

  resources :performances, only: [:new, :create, :show, :update]

   # resources :categories

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  # root "articles#index"
end
