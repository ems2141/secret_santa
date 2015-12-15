Rails.application.routes.draw do
  root 'welcome#index'

  resources :lists, only: [:new, :create, :edit, :index, :update]
end
