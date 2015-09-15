Rails.application.routes.draw do
  root "fabrics#index"

  resources :fabrics
end
