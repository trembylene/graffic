Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :arts, except: [:destroy], :path => "street_art" do
    collection do
      get 'search'
      get 'mine'
      get 'uploaded'
    end
    member do
      get 'like'
      get 'unlike'
      patch 'claim'
      get 'claim'
    end
    resources :supporters, only: [:create, :destroy]
  end
end

