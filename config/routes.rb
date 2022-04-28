Rails.application.routes.draw do
  resources :imageposts
  root 'home#index'
  devise_for :users
  
end
