Rails.application.routes.draw do
  resources :objetivos

  resources :proyectos

  resources :tareas

  root to: 'proyectos#index'
#  root to: 'visitors#index'
  devise_for :users 
  resources :users
end
