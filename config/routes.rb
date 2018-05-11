Rails.application.routes.draw do

  devise_for :users
  root 'dashboard#index'

  resources :owners
  resources :dogs
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
  resources :users
  resources :tasks
  resources :login
  resources :dashboard




  get "/doggytreats", to: "doggytreats#showmytreat"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
