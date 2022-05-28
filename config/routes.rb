# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # GET /about (points to a specific controller)
  # about#index is about controller and index action
  get 'about', to: 'about#index'

  # using edit and update because passwords route is for already signed in user (already has a password)
  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'
  # custom helper rails has to do to get in an empty string
  # get "/", to: "main#index"
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  root to: 'main#index'
end
