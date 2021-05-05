source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 6.1.3.1'

gem 'coffee-rails', '~> 5.0'
gem 'jbuilder', '~> 2.7'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'sass-rails', '~> 6.0'
gem 'sdoc', '~> 2.1.0', group: :doc
gem 'turbolinks', '~> 5' # Makes navigating your web application faster
gem 'uglifier', '>= 1.3.0'
gem 'webpacker', '~> 5.2.1' # Transpile app-like JavaScript.

gem 'active_link_to'
gem 'carrierwave', '~> 2.0'
gem 'draper'
gem 'friendly_id', '~> 5.2'
gem 'globalize'
gem 'http_accept_language'
gem 'mail_form'
# gem 'mandrill-api'
# gem 'mandrill_mailer'
gem 'meta-tags' # Search Engine Optimization (SEO) for Rails
gem 'mini_magick', '~> 4.9', platform: :ruby
gem 'normalize-rails', '~> 8.0.1'
gem 'oj' # Fast JSON parser and object serializer
gem 'pg', '~> 1.0' # Ruby interface to PostgreSQL RDBMS
gem 'puma' # Ruby web server built for concurrency
gem 'rack-attack'
gem 'rails-i18n'
gem 'redcarpet'
gem 'rollbar', '~> 3.1.2' # Error tracking service
gem 'route_translator' # Manage translations of routes
gem 'simple_form', '~> 5.1'
gem 'slim-rails', '~> 3.2' # Template language instead Erb
# gem 'redis', '~> 4.0' # Use Redis adapter to run Action Cable in production
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'capistrano-rails', '~> 1.3'
  gem 'colored'
  gem 'deadweight'
  gem 'gemsurance' # Monitoring of gems version (out-of-date or vulnerable)
  gem 'i18n-tasks'
  gem 'listen', '~> 3.5.1'
  gem 'query_diet'
  gem 'rails_best_practices'
  gem 'rubocop'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
  gem 'rubycritic', require: false
  # gem 'sandi_meter'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.7' # <%= console %> anywhere in the code
end

group :development, :test do
  gem 'bootsnap', '>= 1.4.2', require: false
  # Call 'byebug' in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'pry-byebug', '~> 3.9'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 5.0.1'
  gem 'selenium-webdriver'
end

group :test do
  gem 'database_cleaner', '~> 2.0.1'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'webdrivers' # Web drivers to run system tests with browsers
end

group :production do
  gem 'rails_12factor'
end

# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Use debugger
# gem 'debugger', group: [:development, :test]
