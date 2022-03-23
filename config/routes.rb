Rails.application.routes.draw do
  # get 'favorites/create'
  # get 'favorites/destroy'
  root 'tweets#index'
  devise_for :users
  
#コメントアウト20220105---begin---
  # get 'tweets/new'
  # get 'tweets/index'
  # get 'tweets/show'
  # get 'tweets/create'
  # get 'users/index'
  # get 'users/show'
#コメントアウト20220105---end---
  resources :tweets do
    resource :favorite, only: [:create, :destroy]
  end#追加
  resources :users #追加
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
