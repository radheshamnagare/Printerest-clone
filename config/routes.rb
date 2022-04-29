Rails.application.routes.draw do
  root 'home#index'
  get '/home',to: 'home#index'
  get '/features',to: 'home#features'

  # all routes is defined
  resources :imageposts
 
  devise_for :users
  
  get 'mypage',to: "imageposts#mypage"
  get 'search',to: "imageposts#search"
  
end
