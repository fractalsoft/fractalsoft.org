Rails.application.routes.draw do
  # resources :people, path: 'team', only: [:index]
  # resources :projects, only: [:index, :show]
  resources :contact_forms, path: 'contact-forms', only: [:new, :create]
  root 'home#index'
end
