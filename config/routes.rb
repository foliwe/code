Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root to: 'home#index'
  get '/home/about'
  get '/home/help'
  get '/home/contact'
  get '/home/index'
  get '/signup',  to: 'users#new'
  get '/login',to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  get '/check.txt', to: proc {[200, {}, ['it_works']]}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
