Rails.application.routes.draw do
  defaults locale: :pl do
    get :cieszyn, controller: 'cieszyn/welcome', action: :show
    get :service, to: redirect('/pl/cieszyn')

    namespace :cieszyn do
      resource :collaboration, only: :show, controller: :collaboration
      resource :rules, only: :show
      resource :warranty, only: :show, controller: :warranty
      resources :prices, only: :index
    end
  end

  scope ':locale', locale: /#{I18n.available_locales.join('|')}/ do
    # resources :projects, only: [:index, :show]
    resources :people, path: 'team', only: [:index, :show]
    resources :contact_forms, path: 'contact-forms', only: [:new, :create]
    get :cieszyn, controller: 'cieszyn/welcome', action: :show
    root 'home#index', as: :localized_root
  end

  root to: 'home#index'
  # root to: redirect("/#{I18n.default_locale}", status: 301),
  #      as: :redirected_root
  direct :manifest do
    '/manifest.json'
  end
  match '*path', to: redirect('/'), via: :all
end
