Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :destroy]

  resources :briefcases, only: [:create]
  get '/briefcase', to: "briefcases#show"
  put '/briefcase', to: "briefcases#update"
  patch '/briefcase', to: "briefcases#alter_quantity"

  # resources :abilities, only: [:create]
  get '/:category', to: 'categories#show', as: 'category'
end
