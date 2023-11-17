require 'sidekiq/web'

Rails.application.routes.draw do
  resources :borrows
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :library_s
  get 'library/System'
  get 'library/Management'
  get 'library/home'
  resources :booklists
  resources :types
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root  "library_system_management#home"
end
