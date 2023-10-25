# frozen_string_literal: true

# Run like this:
#
# bundle exec rails runner scripts/one_offs/update_projects_data.rb

Project.find_by(slug: 'andy.be')&.update(slug: 'andy-drink-delivery')
