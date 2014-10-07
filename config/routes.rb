Octopus::Application.routes.draw do

  root :to => "proyectos#index"
  get 'Ayuda'    => 'paginas_estaticas#Ayuda'

  resources :tareas

  resources :proyectos do
    resources :membresias
    get ':condicion', :to => "proyectos#show", :as => "condicion_tarea"
    resources :tareas

  end

  devise_for :users do
    get 'signup'  => 'devise/users#new'
    get    'login'   => 'sessions#new'
    post   'login'   => 'devise/sessions#create'
    delete 'logout'  => 'devise/sessions#destroy'
  end
  resources :users
end
