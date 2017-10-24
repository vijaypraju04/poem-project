Rails.application.routes.draw do
  resources :poems
  resources :groups, only: [:index, :show, :new, :create, :edit, :update]
  #resources :users, only: [:new, :show, :create, :edit, :update]
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]

  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
