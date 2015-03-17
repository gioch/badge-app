Rails.application.routes.draw do

  devise_for :users

  scope 'admin' do
    resources 'companies'
    resources 'users'
    resources 'zones'
  end

  get '/dashboard', to: 'dashboard#index', as: 'dashboard'

  root 'zones#index'

end