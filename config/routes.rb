Rails.application.routes.draw do
  namespace :public do
    get 'registration/index'
    get 'registration/confirm'
  end
  get 'registration/index'
  get 'registration/confirm'
  namespace :public do
    get 'login/index'
    post 'login/complete'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "public/top#index"

  namespace :public do
    root "top#index"
    
    resources :top do
      get :index
    end
  end

  # namespace :admin do
  #   root "top#index"
  # end
end
