Rails.application.routes.draw do
devise_for :users
root to: 'homes#top'
get '/home/about' => 'homes#about', as: "about"
  resources :users, only: [:index, :edit, :show, :update]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
end
