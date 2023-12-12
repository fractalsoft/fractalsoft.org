# frozen_string_literal: true

# Run like this:
#
# bundle exec rails runner scripts/one_offs/update_profiles_data.rb

ania = Person.find_by(nickname: 'ania')

fly = Technology.find_by(slug: 'fly-io')
github_actions = Technology.find_by(slug: 'github-actions')

# rubocop:disable Rails/SkipsModelValidations
TechnologicalSkill.upsert_all(
  [
    { person_id: ania.id, rating: 25, technology_id: fly.id },
    { person_id: ania.id, rating: 15, technology_id: github_actions.id }
  ],
  unique_by: [:person_id, :technology_id],
  update_only: [:rating]
)
# rubocop:enable Rails/SkipsModelValidations

fractalsoft = Project.find_by(slug: 'fractalsoft.org')
nopaperwork = Project.find_by(slug: 'nopaperwork.org')

contribution = Contribution.create_with(name: 'Creating the Github Action Workflow')
                           .find_or_create_by({ person_id: ania.id, project_id: fractalsoft.id, position: 11 })
Globalize.with_locale(:pl) { contribution.update(name: 'Tworzenie przepływu pracy dla akcji Github') }

contribution = Contribution.create_with(name: 'Creating the Github Action Workflow')
                           .find_or_create_by({ person_id: ania.id, project_id: nopaperwork.id, position: 12 })
Globalize.with_locale(:pl) { contribution.update(name: 'Tworzenie przepływu pracy dla akcji Github') }
