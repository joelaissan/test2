Rails.application.routes.draw do

  get 'session/create'
  get 'dashboard/:id', to: 'pages#accueil'
  root to:'pages#home'
  get 'login', to:'pages#connexion'
  get 'register', to:'pages#information'
  post 'register', to:'pages#createUser'
  post 'login', to:'pages#connectUser'
  get 'modify', to:'pages#modify'
  post 'modify', to:'pages#changer'

end
