# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get "about", to: "about#index"

  # custom helper rails has to do get in an empty string
  # get "/", to: "main#index"
  root to: "main#index"
end