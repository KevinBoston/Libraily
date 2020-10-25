Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/new', to: 'users#new', as: 'new_user'
  root 'static#home'
  get '/users', to: 'users#index', as: 'users'
  post 'users', to: 'users#create'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/:id/checkouts', to: 'check_outs#index', as: 'users_checkouts'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch 'users/:id', to: 'users#update'
  
  get 'libraries', to: 'libraries#index', as: 'libraries'
  get 'libraries/new', to: 'libraries#new', as: 'new_library'
  get 'libraries/:id', to: 'libraries#show', as: 'library'
  post 'libraries', to: 'libraries#create'
  
  delete '/session', to: 'session#destroy', as: 'logout'
  get '/session', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  #get '/auth/:provider/callback', to: 'session#create'
  #post '/auth/:provider/callback', to: 'session#create'
  match '/auth/:provider/callback', to: 'session#create', via: [:get, :post]
  get 'auth/github', :as => 'github_auth'
  get 'auth/google_oauth2', :as => 'google_auth'

  
  resources :libraries, only: [:index] do 
    resources :books, only: [:index, :show, :new, :create, :edit, :update]
  end
  get '/books/index', to: 'books#index', as: 'books'
  get '/books/new', to: 'books#new', as: 'new_book'
  post 'books/index', to: 'books#create'
  get '/books/:id', to: 'books#show', as: 'book'
  get '/books/:book_id/checkout', to: 'check_outs#new', as: 'checkout_book'
  post '/books/:book_id/checkout', to: 'check_outs#create', as: 'check_outs'
 

  delete '/users/:user_id/checkouts/:id', to: 'check_outs#destroy', as: 'return'

end
