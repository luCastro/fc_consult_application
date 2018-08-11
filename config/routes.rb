Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :companies

  resources :users

  resource :session, only: [:new, :create, :destroy]

  get('/', { to: 'welcome#index', as: 'home' })

end
