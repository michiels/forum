Rails.application.routes.draw do

  resources :posts

  root 'posts#index'

  get 'posts/index'
  get 'posts/random(/:amount)', to: 'posts#random'

end
