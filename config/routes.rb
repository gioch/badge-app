Rails.application.routes.draw do
   
  resources 'companies'
  resources 'users'
  resources 'zones'

  root 'zones#index'

  get '/dashboard', to: 'dashboard#index'

end
