Rails.application.routes.draw do
  resources :powers, only: [:index]

  
end
