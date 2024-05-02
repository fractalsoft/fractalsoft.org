# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.3'

gem 'rails', '~> 7.1.3.2'

gem 'actionpack-action_caching'
gem 'actionpack-page_caching'
gem 'active_link_to'
gem 'bootstrap', '~> 5.3.3'
gem 'carrierwave', '~> 3.0'
gem 'commonmarker', '~>1.1.1'
gem 'draper'
gem 'friendly_id', '~> 5.5'
gem 'globalize'
gem 'http_accept_language'
gem 'importmap-rails', '~> 2.0'
gem 'jbuilder', '~> 2.12'
gem 'lograge'
gem 'mail_form'
gem 'meta-tags' # Search Engine Optimization (SEO) for Rails
gem 'mini_racer'
gem 'nokogiri'
gem 'normalize-rails', '~> 8.0.1'
gem 'oj' # Fast JSON parser and object serializer
gem 'pg' # Ruby interface to PostgreSQL RDBMS
gem 'puma' # Ruby web server built for concurrency
gem 'rails-i18n'
gem 'route_translator' # Manage translations of routes
gem 'sass-rails', '~> 6.0'
gem 'simple_form', '~> 5.3'
gem 'slim-rails', '~> 3.6' # Template language instead Erb
gem 'terser'
gem 'tzinfo-data'

group :development do
  gem 'active_record_doctor'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'brakeman'
  gem 'bullet'
  gem 'capistrano-rails', '~> 1.6'
  gem 'colored'
  gem 'derailed_benchmarks'
  gem 'fasterer'
  gem 'i18n-tasks'
  gem 'listen'
  gem 'query_diet'
  gem 'rails_best_practices'
  gem 'reek'
  gem 'rubocop'
  gem 'rubocop-factory_bot'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rake'
  gem 'rubocop-rspec'
  gem 'rubycritic', require: false
  gem 'scss_lint'
  gem 'spring'
  gem 'stackprof'
  gem 'web-console', '>= 4.2' # <%= console %> anywhere in the code
end

group :development, :test do
  gem 'bootsnap', '>= 1.16.0', require: false
  # Call 'byebug' in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
  gem 'cuprite'
  gem 'dotenv-rails'
  gem 'pry-byebug', '~> 3.9'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 6.1.2'
end

group :test do
  gem 'database_cleaner', '~> 2.0.1'
  gem 'factory_bot_rails'
  gem 'factory_trace'
  gem 'shoulda-matchers'
  gem 'test-prof'
end

gem 'dockerfile-rails', '>= 1.5', group: :development
