Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  namespace :admin do
    resources :home, only: [:index]

    resources :blogs, only: [:index, :new, :show, :create, :update, :delete, :edit]
  end

  resources :home, only: [:index]
  get 'about' => 'about#index'
  get 'donate' => 'donate#index'
  resources :blogs, only: [:index, :show]
end
