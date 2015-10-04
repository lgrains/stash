Rails.application.routes.draw do
  resources :users
  root "fabrics#index"

  resources :fabrics
end
