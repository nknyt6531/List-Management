Rails.application.routes.draw do
  devise_for :users
  resouces :customers, only: [:new, :create, :show, :edit, :update, :destroy]
end
