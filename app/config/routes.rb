Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, except: %w[index]
  resources :tags, only: %w[index show destroy]
end
