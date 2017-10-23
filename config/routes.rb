Rails.application.routes.draw do
  resources :poems
  resources :groups, only: [:index, :show, :new, :create, :edit, :update]
  #resources :users, only: [:new, :show, :create, :edit, :update]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
