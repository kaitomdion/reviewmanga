Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  resources :users, only: [:show, :index,] 
  resources :reviews, only: [:new, :create, :edit, :update] do
    resources :likes, only: [:create, :destroy, :index]
  end
  resources :products, only: [:show, :index, :new, :create] do
    collection do
      get 'search'
    end
    resources :reviews, only: [:new, :create, :edit, :update] 
  end 
  resources :genres, only: [:show]
end
