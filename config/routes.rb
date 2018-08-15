Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :companies

  resources :users

  resources :audits, only: [:show, :index] do

    resources :rat_reports, shallow: true, only: [:new, :show, :index, :create, :update]

  end

  resource :session, only: [:new, :create, :destroy]

  get('/', { to: 'welcome#index', as: 'home' })

end
