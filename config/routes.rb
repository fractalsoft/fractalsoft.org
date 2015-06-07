Rails.application.routes.draw do
  # resources :people, path: 'team', only: [:index]

  # resources :projects, only: [:index, :show]

  root 'home#index'
  resources :contact_forms, path: 'contact-forms', only: [:create]
  # resources :contact_forms, path: 'contact-forms', only: [:new, :create]
end
