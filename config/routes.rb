Rails.application.routes.draw do
  # get 'listings/index'
  root "listings#index"
  get "listings" => "listings#index"
  get "listings/:id" => "listings#show", as: "listing"
end
