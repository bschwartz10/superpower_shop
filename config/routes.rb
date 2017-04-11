Rails.application.routes.draw do
  resources :powers, only: [:index]
  
  resources :briefcases
  resources :abilities, only: [:create]
  # get '/:category', to: 'categories#show'
  
end
