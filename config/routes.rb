Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  
  get '/home', to: 'videos#index'
  get '/category(/:id)', to: 'categories#show', as: 'category'

  resources :videos, only: [:index, :show]

end
