# frozen_string_literal: true

require 'English'

namespace :factory_bot do
  desc 'Verify that all FactoryBot factories are valid'
  task lint: :environment do
    if Rails.env.test?
      conn = ActiveRecord::Base.connection
      conn.transaction do
        FactoryBot.lint
        raise ActiveRecord::Rollback
      end
    else
      puts 'Wrong environment detected to run factory_bot:lint'
      command = 'bundle exec rake factory_bot:lint RAILS_ENV=test'
      puts "Running `#{command}` instead"
      system(command)
      raise if $CHILD_STATUS.exitstatus.nonzero?
    end
  end
end
