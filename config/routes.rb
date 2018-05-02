Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :arts, except: [:destroy], :path => "street_art" do
    collection do
      get 'search'
      get 'mine'
      get 'uploaded'
      get 'hearted'
    end
    member do
      get 'like'
      get 'unlike'
      patch 'claim'
      put 'claim'
      get 'claim'
    end
    resources :supporters, only: [:create, :destroy]
    resources :comments, only: :create
  end
end

