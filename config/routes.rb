Rails.application.routes.draw do  
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  resources :requests, except: :show
  devise_for :users
  resources :categories
  resources :books
  resources :users
  namespace :admin do
  	root 'requests#index'
    resources :requests, only: [:index, :update]
    patch 'update_request' => 'requests#update'
  end
end
