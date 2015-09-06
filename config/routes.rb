Rails.application.routes.draw do
  root "fabrics#index"

  resources :fabrics, only: [:index, :show]
end
