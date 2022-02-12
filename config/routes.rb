Rails.application.routes.draw do
  devise_for :users
  resources :customers, only: [:new, :create, :show, :edit, :update, :destroy]
end
