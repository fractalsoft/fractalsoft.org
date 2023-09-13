# frozen_string_literal: true

# Run like this:
#
# bundle exec rails runner scripts/one_offs/update_profiles_data.rb

ania = Person.find_by(nickname: 'ania')

ania.update(
  skills: %(
    Backend Development, Deployment, Teamwork, GDPR knowledge,
    User Technical Support, Willingness to learn, Logical thinking
  )
)

ruby_on_rails = Technology.find_by(slug: 'ruby-on-rails')

# rubocop:disable Rails/SkipsModelValidations
TechnologicalSkill.upsert_all(
  [
    { person_id: ania.id, rating: 33, technology_id: ruby_on_rails.id }
  ],
  unique_by: [:person_id, :technology_id],
  update_only: [:rating]
)
# rubocop:enable Rails/SkipsModelValidations

blog = Project.find_by(slug: 'blog.fractalsoft.org')
fractalsoft = Project.find_by(slug: 'fractalsoft.org')
nopaperwork = Project.find_by(slug: 'nopaperwork.org')

contribution = Contribution.create_with(name: 'Updating gems')
                           .find_or_create_by({ person_id: ania.id, project_id: blog.id, position: 4 })
Globalize.with_locale(:pl) { contribution.update(name: 'Aktualizacja gemów') }

contribution = Contribution.create_with(name: 'Importmaps optimization')
                           .find_or_create_by({ person_id: ania.id, project_id: fractalsoft.id, position: 7 })
Globalize.with_locale(:pl) { contribution.update(name: 'Optymalizacja importmaps') }

contribution = Contribution.create_with(name: 'Writing system tests')
                           .find_or_create_by({ person_id: ania.id, project_id: nopaperwork.id, position: 11 })
Globalize.with_locale(:pl) { contribution.update(name: 'Aktualizacja gemów') }

contribution = Contribution.find_or_create_by({ person_id: ania.id, project_id: nopaperwork.id, position: 5 })
Globalize.with_locale(:pl) { contribution.update(name: 'Normalizacja numerów telefonów (E.164)') }
