Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :arts, except: [:destroy] do
    collection do
      get 'search'
    end
    resources :supporters, only: [:create, :destroy]
  end
end
