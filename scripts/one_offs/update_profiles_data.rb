# frozen_string_literal: true

# Run like this:
#
# bundle exec rails runner scripts/one_offs/update_profiles_data.rb

ania = Person.find_by(nickname: 'ania')

rspec = Technology.find_by(slug: 'rspec')

# rubocop:disable Rails/SkipsModelValidations
TechnologicalSkill.upsert_all(
  [
    { person_id: ania.id, rating: 12, technology_id: rspec.id }
  ],
  unique_by: [:person_id, :technology_id],
  update_only: [:rating]
)
# rubocop:enable Rails/SkipsModelValidations

fractalsoft = Project.find_by(slug: 'fractalsoft.org')

contribution = Contribution.create_with(name: 'Writing unit tests')
                           .find_or_create_by({ person_id: ania.id, project_id: fractalsoft.id, position: 8 })
Globalize.with_locale(:pl) { contribution.update(name: 'Pisanie testów jednostkowych') }
