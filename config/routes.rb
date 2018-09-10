Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :companies, only: [:show, :index] do
    
    resources :sites, only: [:show, :index] 
  
  end

  resources :users

  resources :audits, only: [:show, :index, :create, :update] do

    resources :rat_reports, shallow: true, only: [:new, :create, :show, :edit, :update]
    resources :evidences, shallow: true

  end

  resource :session, only: [:new, :create, :delete, :destroy]

  # get('/', { to: 'welcome#index', as: 'home' })

end



