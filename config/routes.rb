Rails.application.routes.draw do

  devise_for :users, skip: [:registrations]

  root to: "home#index"

  namespace :admin do
    resources :home, only: [:index]

    resources :blogs, only: [:index, :new, :show, :create, :update, :destroy, :edit]

    resources :impacts, only: [:index, :new, :show, :create, :update, :destroy, :edit]
    resources :testimonies
    resources :messages, only: [:index, :delete, :show]
  end

  resources :home, only: [:index] 
  resources :messages, only: [:show, :update, :destroy, :new, :create, :edit]
  
  
  get 'about' => 'about#index'
  get 'donate' => 'donate#index'
  resources :blogs, only: [:index, :show]
  
end
