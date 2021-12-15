Rails.application.routes.draw do
  root 'static#home'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'
  
  get '/auth/google_oauth2/callback', to: 'sessions#create'

  # this route added during live coding session of review
  get '/show_users', to: 'users#show_users'

  resources :venues, only: [:show] do
    resources :performances, only: [:show]
  end

  resources :users, only: [:show] do
    resources :performances, only: [:new, :create, :show, :edit, :update]
  end

  resources :performances

   # resources :categories

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  # root "articles#index"
end
