Rails.application.routes.draw do
  get 'welcome/index'

  resources :departments
  resources :employees

  root 'welcome#index'
end
