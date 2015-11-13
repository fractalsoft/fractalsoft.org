Rails.application.routes.draw do
  scope ':locale', locale: /#{I18n.available_locales.join('|')}/ do
    # resources :projects, only: [:index, :show]
    resources :people, path: 'team', only: [:index, :show]
    resources :contact_forms, path: 'contact-forms', only: [:new, :create]
    get :cieszyn, to: redirect('cieszyn/welcome')
    namespace :cieszyn do
      resource :collaboration, only: :show, controller: :collaboration
      resource :rules, only: :show
      resource :warranty, only: :show, controller: :warranty
      resource :welcome, only: :show, controller: :welcome
      resources :prices, only: :index
    end
    root 'home#index'
  end

  get :cieszyn, to: redirect('pl/cieszyn/welcome')

  root to: redirect("/#{I18n.default_locale}", status: 301),
       as: :redirected_root
end
