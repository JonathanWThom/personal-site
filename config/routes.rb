Rails.application.routes.draw do
  root :to => 'home#index'
  resources :posts, :path => 'blog'
  resources :about, :only => [:index]
  resources :projects
end
