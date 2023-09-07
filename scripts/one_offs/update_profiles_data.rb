# frozen_string_literal: true

# Run like this:
#
# bundle exec rails runner scripts/one_offs/update_profiles_data.rb

require_relative '../../db/seeds/technology/alpine_linux'
require_relative '../../db/seeds/technology/fly_io'

ania = Person.find_by(nickname: 'ania')
torrocus = Person.find_by(nickname: 'torrocus')

alpine_linux = Technology.find_by(slug: 'alpine-linux')
docker = Technology.find_by(slug: 'docker')
fly_io = Technology.find_by(slug: 'fly-io')

# rubocop:disable Rails/SkipsModelValidations
TechnologicalSkill.upsert_all(
  [
    { person_id: ania.id, rating: 20, technology_id: fly_io.id },
    { person_id: ania.id, rating: 13, technology_id: docker.id },
    { person_id: torrocus.id, rating: 15, technology_id: alpine_linux.id },
    { person_id: torrocus.id, rating: 30, technology_id: fly_io.id }
  ],
  unique_by: [:person_id, :technology_id],
  update_only: [:rating]
)
# rubocop:enable Rails/SkipsModelValidations
