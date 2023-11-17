# frozen_string_literal: true

# Run like this:
#
# bundle exec rails runner scripts/one_offs/update_profiles_data.rb

ania = Person.find_by(nickname: 'ania')

selenium = Technology.find_by(slug: 'selenium-webdriver')

# rubocop:disable Rails/SkipsModelValidations
TechnologicalSkill.upsert_all(
  [
    { person_id: ania.id, rating: 10, technology_id: selenium.id }
  ],
  unique_by: [:person_id, :technology_id],
  update_only: [:rating]
)
# rubocop:enable Rails/SkipsModelValidations

fractalsoft = Project.find_by(slug: 'fractalsoft.org')
contribution = Contribution.create_with(name: 'Copywriting')
                           .find_or_create_by({ person_id: ania.id, project_id: fractalsoft.id, position: 9 })
Globalize.with_locale(:pl) { contribution.update(name: 'Copywriting') }

contribution = Contribution.create_with(name: 'Refactoring the Markdown parser from Redcarpet to CommonMarker')
                           .find_or_create_by({ person_id: ania.id, project_id: fractalsoft.id, position: 10 })
Globalize.with_locale(:pl) { contribution.update(name: 'Refaktoring parsera Markdowna z Redcarpet na CommonMarker') }
