Rails.application.routes.draw do
  get 'welcome/index'
  get 'projects/new', to:'projects#new'
  get 'projects/create', to:'projects#create'
  get 'tasks/new', to:'tasks#new'
  resources :projects
  resources :tasks
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
