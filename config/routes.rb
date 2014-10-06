<<<<<<< HEAD
Rails.application.routes.draw do
  resources :proyectos
=======
Octopus::Application.routes.draw do

  #root       'paginas_estaticas#Inicio'
  root :to => "proyectos#index"
  get 'Ayuda'    => 'paginas_estaticas#Ayuda'
>>>>>>> 6b065d7d321f1e3a6c0b4542c4af71f21ffbd899

  resources :objetivos
  resources :tareas
  resources :organizacions
  resources :objetivos

<<<<<<< HEAD
  #root to: 'proyectos#index'
  root to: 'visitors#index'
  devise_for :users 
=======
  resources :proyectos do
    resources :membresias
    #get ':status', :to => "proyectos#show", :as => "tareas"
    #get 'proyectos' => "proyectos#show"

  end

  devise_for :users do
    get 'signup'  => 'devise/users#new'
    get    'login'   => 'sessions#new'
    post   'login'   => 'devise/sessions#create'
    delete 'logout'  => 'devise/sessions#destroy'
  end
>>>>>>> 6b065d7d321f1e3a6c0b4542c4af71f21ffbd899
  resources :users
end
