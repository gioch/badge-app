Rails.application.routes.draw do

  devise_for :users, :skip => [:sessions]
  devise_scope :user do
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'signin' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session 
  end

  root 'zones#index'

  scope 'admin' do
    resources 'companies'
    resources 'users'
    resources 'zones'
  end

  get '/dashboard' => 'dashboard#index', as: 'dashboard'

end