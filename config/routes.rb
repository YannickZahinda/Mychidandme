Rails.application.routes.draw do
  
  devise_for :users
  root to: "home#index"

  namespace :admin do
    resource :blog, only: [:index, :new, :show, :create, :update, :delete, :edit]
  end

  resource :home, only: [:index]
  get 'about' => 'about#index'
  resources :blogs, only: [:index, :show]
end
