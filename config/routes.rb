Rails.application.routes.draw do
  root 'pages#index'

  resources :lands
  resources :plants
  resources :workers
end
