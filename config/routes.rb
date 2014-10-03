Rails.application.routes.draw do
  resources :proyectos

  resources :tareas

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
