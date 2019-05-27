Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root 'dogs#index'
  resources :groups do
    resources :messages
    collection do
      get :search
    end
  end
  
  resources :users
    # resources :messages
  # end
  resources :dogs do
    collection do
      get :search
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
