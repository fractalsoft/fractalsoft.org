# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'

Rails.root.glob('spec/support/**/*.rb').each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_paths = Rails.root.join('spec/fixtures')
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = true
end
