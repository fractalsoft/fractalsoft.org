Rails.application.routes.draw do
  direct(:blog) { 'https://blog.fractalsoft.org' }
  direct(:manifest) { '/manifest.json' }

  get '/cieszyn' => redirect('/')
  get '/cieszyn/:path' => redirect('/')
  get '/pl/cieszyn' => redirect('/pl')
  get '/pl/cieszyn/:path' => redirect('/pl')
  get '/service' => redirect('/')

  localized do
    # Use explicit routes (no `.:format`) so friendly_id slugs containing dots
    # like `amenitiz.com` don't get interpreted as a request format.
    get 'projects', to: 'projects#index', as: :projects, format: false
    get 'projects/:id', to: 'projects#show', as: :project, format: false, constraints: { id: /[^\/]+/ }
    get 'services', to: 'services#index'
    resource :business_contact_forms, only: [:show, :new, :create]
    resources :communities, only: [:index, :show]
    resources :contact_forms, only: [:new, :create], path_names: { new: 'new_message' }
    resources :domains, only: [:show]
    resources :job_offers, only: [:index, :show]
    resources :people, only: [:index, :show] do
      constraints link_name: /#{Person::LINK_NAMES.join('|')}/ do
        get '/:link_name', to: 'external_link#show', as: 'external_link'
      end
    end
    root to: 'home#index'
  end
end
