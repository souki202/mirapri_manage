Rails.application.routes.draw do
  resources :equipment
  root 'top#index'
  get 'top/index'

  get 'login' => 'login#index'
  post 'login'=> 'login#complete'
  delete 'logout'  => 'sessions#destroy'
  get 'login/index'
  post 'login/complete'

  resources :accounts
  
end
