Rails.application.routes.draw do
#  get 'pages/home'
  get 'create' => 'sleeps#create'
  resources :sleeps

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
