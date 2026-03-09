# frozen_string_literal: true

# Run like this:
#
# bundle exec rails runner scripts/one_offs/update_projects_data.rb

Project.find_by(slug: 'andy-drink-delivery')&.update(slug: 'nda-koch')
Project.find_by(slug: 'futurelearn.com')&.update(slug: 'nda-julia')
Project.find_by(slug: 'tmc-ops')&.update(slug: 'nda-cantor')
