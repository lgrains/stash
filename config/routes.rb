Rails.application.routes.draw do
  # get 'fabrics/index'
  root "fabrics#index"
  get "fabrics" => "fabrics#index"
  get "fabrics/:id" => "fabrics#show", as: "fabric"
end
