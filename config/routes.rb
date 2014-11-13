Rails.application.routes.draw do
  root 'home#index'
  resources :contact_forms, path: 'contact-forms', only: [:new, :create]
end
