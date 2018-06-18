Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:show, :new, :create]

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
