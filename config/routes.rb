Rails.application.routes.draw do

  get 'session/create'
  get 'home', to: 'pages#home'
  root to:'pages#accueil'
  get 'login', to:'pages#connexion'
  get 'register', to:'pages#information'
  post 'register', to:'pages#createUser'
  post 'login', to:'pages#connectUser'
  get 'modify', to:'pages#modify'
  post 'modify', to:'pages#changer'
  get 'buy', to:'pages#payer'
end
