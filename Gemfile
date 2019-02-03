source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 5.2.2'

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'sass-rails', '~> 5.0.6'
gem 'sdoc', '~> 1.0', group: :doc
gem 'turbolinks', '~> 5' # Makes navigating your web application faster
gem 'uglifier', '>= 1.3.0'

gem 'actionpack-page_caching'
gem 'active_link_to'
gem 'carrierwave', '~> 1.2'
gem 'compass-rails', '~> 3.0'
gem 'draper'
gem 'foreman', '~> 0.84'
gem 'friendly_id', '~> 5.2'
gem 'globalize'
gem 'globalize-accessors'
gem 'http_accept_language'
gem 'mail_form'
gem 'mandrill-api'
gem 'mandrill_mailer'
gem 'meta-tags' # Search Engine Optimization (SEO) for Rails
gem 'mini_magick', '~> 4.8', platform: :ruby
gem 'normalize-rails', '~> 4.1.1'
gem 'oj' # Fast JSON parser and object serializer
gem 'pg', '~> 1.0' # Ruby interface to PostgreSQL RDBMS
gem 'puma', '~> 3.11' # Ruby web server built for concurrency
gem 'rack-attack'
gem 'rails-i18n'
gem 'redcarpet'
gem 'rollbar', '~> 2.18' # Error tracking service
gem 'simple_form', '~> 4.1'
gem 'slim-rails', '~> 3.2' # Template language instead Erb
gem 'twitter-bootstrap-rails'
# gem 'redis', '~> 4.0' # Use Redis adapter to run Action Cable in production
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'brakeman', require: false
  gem 'bullet', '~> 5.7'
  gem 'capistrano-rails', '~> 1.3'
  gem 'colored'
  gem 'deadweight'
  gem 'gemsurance' # Monitoring of gems version (out-of-date or vulnerable)
  gem 'i18n-tasks'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'query_diet'
  gem 'quiet_safari'
  gem 'rails_best_practices'
  gem 'rubocop'
  gem 'rubocop-rspec'
  gem 'rubycritic', require: false
  gem 'sandi_meter'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0' # <%= console %> anywhere in the code
end

group :development, :test do
  # Call 'byebug' in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails', '~> 2.2'
  gem 'pry-byebug', '~> 3.6'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.5'
  gem 'selenium-webdriver'
end

group :test do
  gem 'database_cleaner', '~> 1.6'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
end

group :production do
  gem 'rails_12factor'
end

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap', '~> 3.3.7'
  gem 'rails-assets-jquery', '~> 3.3'
  gem 'rails-assets-leaflet', '~> 1.3'
  gem 'rails-assets-markdown-js'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use debugger
# gem 'debugger', group: [:development, :test]
