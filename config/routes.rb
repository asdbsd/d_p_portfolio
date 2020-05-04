Rails.application.routes.draw do

  root to: 'pages#home'

  resources :blogs do
    member do
      get :change_status
    end
  end

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'register', sign_out: 'logout' }
  resources :portfolios, except: [:show]

  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'


end
