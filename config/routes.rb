Rails.application.routes.draw do
  direct(:blog) { 'https://blog.fractalsoft.org' }
  direct(:manifest) { '/manifest.json' }

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
    get :cieszyn, controller: 'cieszyn/welcome', action: :show
  end

  localized do
    # resources :projects, only: [:index, :show]
    resources :communities, only: [:index, :show]
    resources :contact_forms, only: [:new, :create], path_names: { new: 'new_message' }
    resources :people, only: [:index, :show]
    root to: 'home#index'
  end
end
