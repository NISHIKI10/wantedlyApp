Rails.application.routes.draw do
  devise_for :companies, controllers: {
    sessions:      'companies/sessions',
    passwords:     'companies/passwords',
    registrations: 'companies/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  resources :posts
  resources :companies
  resources :users
  root 'posts#index'

  resources :posts do
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :posts do
    resource :user_comments, only: [:create]
  end

  resources :posts do
    resource :company_comments, only: [:create]
  end
end
