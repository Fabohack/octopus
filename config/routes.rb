Octopus::Application.routes.draw do

  #root       'paginas_estaticas#Inicio'
  root :to => "proyectos#index"
  get 'Ayuda'    => 'paginas_estaticas#Ayuda'

  resources :objetivos
  resources :tareas

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
  resources :users
end
