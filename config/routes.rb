Rails.application.routes.draw do
   
  resources 'companies'
  resources 'users'
  resources 'zones'

  root 'companies#index'

end
