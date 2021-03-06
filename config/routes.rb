Rails.application.routes.draw do

  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:index, :new, :create]
  end

  resources :doses, only: [:destroy]
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
