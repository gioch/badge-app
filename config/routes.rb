Rails.application.routes.draw do
   
  devise_for :users
  resources 'companies'
  resources 'users'
  resources 'zones'

  root 'zones#index'

  get '/dashboard', to: 'dashboard#index'

end
