Rails.application.routes.draw do
  # resources :people, path: 'team', only: [:index]
  # resources :projects, only: [:index, :show]
  put 'locale/:locale', to: 'sessions#update'
  resources :contact_forms, path: 'contact-forms', only: [:new, :create]
  resource :sessions, only: [:update]
  root 'home#index'
end
