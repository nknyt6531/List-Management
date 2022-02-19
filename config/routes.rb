Rails.application.routes.draw do
  devise_for :users
  resources :customers, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update] do
    resources :post_comments, only: [:new, :create, :show, :edit, :update, :destroy]
  end
end
