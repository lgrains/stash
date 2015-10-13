Rails.application.routes.draw do
  resources :users
  root "fabrics#index"

  resources :fabrics

  get "signup" => "users#new"
  get "signin" => "sessions#new"

  resource :session
end
