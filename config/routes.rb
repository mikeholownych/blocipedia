Rails.application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :collaborators

  get '/wikis/public', to: 'wikis#public'

  resources :wikis

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
