Rails.application.routes.draw do
  resources :powers, only: [:index]

  resources :briefcases, only: [:create]
  get '/briefcase', to: "briefcases#show"
  
  # resources :abilities, only: [:create]
  get '/:category', to: 'categories#show', as: 'category'
end
