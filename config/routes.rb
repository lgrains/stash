Rails.application.routes.draw do
  # get 'listings/index'
  get "listings" => "listings#index"

  get "listings/:id" => "listings#show"
end
