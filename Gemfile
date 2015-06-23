source 'https://rubygems.org'

ruby '2.2.1'

gem 'rails', '4.2.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'rails-i18n'

group :development do
  gem 'spring'
  gem 'quiet_assets'
  gem 'rails_best_practices'
  gem 'rubocop'
  gem 'sandi_meter'
  gem 'brakeman'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'metric_fu'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0.2'
  gem 'sqlite3'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# For sending mail form form
gem 'mail_form'

# Images
gem 'carrierwave'

platform :ruby do
  gem 'mini_magick'
end

# decorators
gem 'draper'

# pry
group :development, :test do
  gem 'pry-rails'
end
