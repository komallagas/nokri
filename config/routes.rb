Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # devise_for :users
 root "users#index"
 resources :users do 
  resources :companies
  resources :jobs
  resources :applies
  resources :skills
  resources :educations
end
 # get "/users", to: "users#index"
 # get "/users/:id", to: "users#show"
end




