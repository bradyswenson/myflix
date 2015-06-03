Myflix::Application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  #home
  get 'home' => 'videos#index'

end
