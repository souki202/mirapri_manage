Rails.application.routes.draw do
  root 'top#index'
  get 'top/index'

  get 'login', to: 'login#index'
  get 'login/index'
  post 'login/complete'

  resources :accounts
  
end
