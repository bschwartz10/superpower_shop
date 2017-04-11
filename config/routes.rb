Rails.application.routes.draw do
  resources :powers, only: [:index]

  resource :briefcase, only: [:create, :show]
  
  # resources :abilities, only: [:create]
  get '/:category', to: 'categories#show', as: 'category'
end
