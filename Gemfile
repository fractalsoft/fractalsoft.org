source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 7.0.0'

gem 'actionpack-action_caching'
gem 'actionpack-page_caching'
gem 'active_link_to'
gem 'bootstrap', '~> 5.2'
gem 'carrierwave', '~> 2.2'
gem 'coffee-rails', '~> 5.0'
gem 'draper'
gem 'friendly_id', '~> 5.5'
gem 'globalize'
gem 'http_accept_language'
gem 'importmap-rails', '~> 1.1'
gem 'jbuilder', '~> 2.11'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'mail_form'
gem 'meta-tags' # Search Engine Optimization (SEO) for Rails
gem 'mini_magick', '~> 4.12', platform: :ruby
gem 'nokogiri'
gem 'normalize-rails', '~> 8.0.1'
gem 'oj' # Fast JSON parser and object serializer
gem 'pg' # Ruby interface to PostgreSQL RDBMS
gem 'puma' # Ruby web server built for concurrency
gem 'rails-i18n'
gem 'redcarpet'
gem 'route_translator' # Manage translations of routes
gem 'sass-rails', '~> 6.0'
gem 'simple_form', '~> 5.2'
gem 'slim-rails', '~> 3.6' # Template language instead Erb
gem 'turbolinks', '~> 5' # Makes navigating your web application faster
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'capistrano-rails', '~> 1.3'
  gem 'coffeelint'
  gem 'colored'
  gem 'deadweight'
  gem 'derailed_benchmarks'
  gem 'gemsurance' # Monitoring of gems version (out-of-date or vulnerable)
  gem 'i18n-tasks'
  gem 'listen'
  gem 'query_diet'
  gem 'rails_best_practices'
  gem 'rubocop'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubycritic', require: false
  gem 'sandi_meter'
  gem 'scss_lint', require: false
  gem 'spring'
  gem 'stackprof'
  gem 'web-console', '>= 4.2' # <%= console %> anywhere in the code
end

group :development, :test do
  gem 'bootsnap', '>= 1.16.0', require: false
  # Call 'byebug' in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'pry-byebug', '~> 3.9'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 6.0.1'
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
