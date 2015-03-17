Rails.application.routes.draw do

  devise_for :users

  root 'zones#index'

  scope 'admin' do
    resources 'companies'
    resources 'users'
    resources 'zones'
  end

  get '/dashboard', to: 'dashboard#index', as: 'dashboard'

end