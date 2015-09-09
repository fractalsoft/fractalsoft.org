Rails.application.routes.draw do
  get 'trap' => 'trap#index'
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    # resources :projects, only: [:index, :show]
    resources :people, path: 'team', only: [:index, :show]
    resources :contact_forms, path: 'contact-forms', only: [:new, :create]
    root 'home#index'
  end
end
