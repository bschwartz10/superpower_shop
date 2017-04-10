Rails.application.routes.draw do
  get '/powers', to: 'categories#items'
end
