Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => 'home#index'
  resources :posts, :path => 'blog'
  resources :contact, :only => [:index]
  resources :projects
end
