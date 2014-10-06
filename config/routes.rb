Rails.application.routes.draw do
  resources :proyectos

  resources :tareas
  resources :organizacions
  resources :objetivos

  #root to: 'proyectos#index'
  root to: 'visitors#index'
  devise_for :users 
  resources :users
end
