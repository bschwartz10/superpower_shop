Rails.application.routes.draw do
  resources :powers, only: [:index]
  
  resources :briefcases
  # get '/:category', to: 'categories#show'
  
end
