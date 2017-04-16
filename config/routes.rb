Rails.application.routes.draw do
  root to: "sessions#show"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  get '/dashboard', to: 'users#show'
  
  namespace :admin do
    # resources :orders, only: [:index]
    get '/dashboard', to: 'orders#dashboard'
  end

  resources :powers, only: [:index, :show, :destroy]

  resources :briefcases, only: [:create]
  get '/briefcase', to: "briefcases#show"
  put '/briefcase', to: "briefcases#update"
  patch '/briefcase', to: "briefcases#alter_quantity"

  resources :orders, only: [:index, :show, :create, :update]
  get '/:category', to: 'categories#show', as: 'category'
end
