Rails.application.routes.draw do
  resources :justfortests
  resources :categories
  resources :posts
  resources :types
  resources :articles
  resources :home
  resources :blogs
  resources :experiences
  resources :countries
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #get 'welcome/homepage'
  #root 'welcome#homepage'
  get 'home/index'
  root 'home#index'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
