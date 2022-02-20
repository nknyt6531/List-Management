Rails.application.routes.draw do
  devise_for :users
  resources :customers, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :post_comments, only: [:new, :create, :show, :edit, :update, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  resources :shifts, only: [:index, :show, :cretae, :edit, :update, :destroy]
end
