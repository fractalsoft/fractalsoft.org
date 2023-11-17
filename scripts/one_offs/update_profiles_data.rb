# frozen_string_literal: true

# Run like this:
#
# bundle exec rails runner scripts/one_offs/update_profiles_data.rb

ania = Person.find_by(nickname: 'ania')
fractalsoft = Project.find_by(slug: 'fractalsoft.org')

contribution = Contribution.find_or_create_by({ person_id: ania.id, project_id: fractalsoft.id, position: 7 })
Globalize.with_locale(:en) { contribution.update(name: 'Markdown parser (Redcarpet → CommonMarker)') }
Globalize.with_locale(:pl) { contribution.update(name: 'Parser Markdowna (Redcarpet → CommonMarker)') }

contribution = Contribution.find_or_create_by({ person_id: ania.id, project_id: fractalsoft.id, position: 8 })
Globalize.with_locale(:en) { contribution.update(name: 'Importmaps optimization') }
Globalize.with_locale(:pl) { contribution.update(name: 'Optymalizacja importmaps') }

contribution = Contribution.find_or_create_by({ person_id: ania.id, project_id: fractalsoft.id, position: 9 })
Globalize.with_locale(:en) { contribution.update(name: 'Writing unit tests') }
Globalize.with_locale(:pl) { contribution.update(name: 'Pisanie testów jednostkowych') }

contribution = Contribution.find_or_create_by({ person_id: ania.id, project_id: fractalsoft.id, position: 10 })
Globalize.with_locale(:en) { contribution.update(name: 'Copywriting') }
Globalize.with_locale(:pl) { contribution.update(name: 'Copywriting') }
