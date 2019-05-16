Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root 'home#index'
  resources :groups
  # resources :messages
  resources :users do
    resources :messages
  end
  resources :dogs do
    collection do
      get :search
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
