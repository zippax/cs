Rails.application.routes.draw do
  resources :categories

  get 'home/index'
  root 'home#index'
end
