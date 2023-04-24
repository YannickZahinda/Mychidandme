Rails.application.routes.draw do
  root to: "home#index"

  resource :home, only: [:index]
  get 'about' => 'about#index'
end
