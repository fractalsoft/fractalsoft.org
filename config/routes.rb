Rails.application.routes.draw do
  scope ':locale', locale: /#{I18n.available_locales.join('|')}/ do
    # resources :projects, only: [:index, :show]
    resources :people, path: 'team', only: [:index, :show]
    resources :contact_forms, path: 'contact-forms', only: [:new, :create]
    root 'home#index'
  end

  root to: redirect("/#{I18n.default_locale}", status: 301),
       as: :redirected_root
end
