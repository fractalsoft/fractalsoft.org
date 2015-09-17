Rails.application.routes.draw do
  scope ':locale', locale: /#{I18n.available_locales.join('|')}/ do
    # resources :projects, only: [:index, :show]
    resources :people, path: 'team', only: [:index, :show]
    resources :contact_forms, path: 'contact-forms', only: [:new, :create]
    get :cieszyn, to: redirect('cieszyn/welcome')
    namespace :cieszyn do
      resource :rules, only: :show
      resource :warranty, only: :show, controller: :warranty
      resource :welcome, only: :show, controller: :welcome
    end
    root 'home#index'
  end
  get '*path', to: redirect("/#{I18n.default_locale}/%{path}")
  get '', to: redirect("/#{I18n.default_locale}")
end
