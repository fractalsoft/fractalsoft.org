ania = Person.find_by(nickname: 'ania')

# projects
blog = Project.find_by(slug: 'blog.fractalsoft.org')
fractalsoft = Project.find_by(slug: 'fractalsoft.org')
nopaperwork = Project.find_by(slug: 'nopaperwork.org')
purpura = Project.find_by(slug: 'purpura.eu')

# ania in blog
params = { person_id: ania.id, project_id: blog.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Copywriting' }
contribution.attributes = { locale: :pl, name: 'Pisanie artykułów' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Typos correction' }
contribution.attributes = { locale: :pl, name: 'Poprawa literówek' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Ruby update' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja Ruby' }
contribution.save

# ania in fractalsoft
params = { person_id: ania.id, project_id: fractalsoft.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Updating gems and npm' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja (gems + npm)' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Rails update' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Development of git hooks' }
contribution.attributes = { locale: :pl, name: 'Rozwój git hooków' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Database changes' }
contribution.attributes = { locale: :pl, name: 'Zmiany w bazie danych' }
contribution.save

# ania in nopaperwork
params = { person_id: ania.id, project_id: nopaperwork.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Writing unit tests' }
contribution.attributes = { locale: :pl, name: 'Pisanie testów jednostkowych' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Implementation of dynamic fields in jsonb' }
contribution.attributes = { locale: :pl, name: 'Implementacja dynamicznych pól w jsonb' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Application update (Ruby, Rails and gems)' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja aplikacji (Ruby, Rails i biblioteki)' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Code refactoring' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu' }
contribution.save

# ania in purpura
params = { person_id: ania.id, project_id: purpura.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Writing unit tests' }
contribution.attributes = { locale: :pl, name: 'Pisanie testów jednostkowych' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Update Ruby and gems' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja Ruby i bibliotek' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Code refactoring' }
contribution.attributes = { locale: :pl, name: 'Refaktoryzacja kodu' }
contribution.save
