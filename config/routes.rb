Rails.application.routes.draw do

  get 'chats/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :users

  root :to => 'home#top'
  get 'home/about' => 'home#about'
  post '/users/:id/update' => 'users#update'

  resources :chats, only: [:create, :show]

end
