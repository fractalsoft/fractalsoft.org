# frozen_string_literal: true

# Run like this:
#
# bundle exec rails runner scripts/one_offs/update_technologies_data.rb

Technology.find_by(slug: 'circleci')&.update(slug: 'circle-ci')
