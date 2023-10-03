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

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Updating gems' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja gemów' }
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

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Deployment to test server' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie na serwer testowy' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Importmaps optimization' }
contribution.attributes = { locale: :pl, name: 'Optymalizacja importmaps' }
contribution.save

contribution = Contribution.new(params.merge(position: 8))
contribution.attributes = { locale: :en, name: 'Writing unit tests' }
contribution.attributes = { locale: :pl, name: 'Pisanie testów jednostkowych' }
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
contribution.attributes = { locale: :en, name: 'Phone number normalization (standard E.164)' }
contribution.attributes = { locale: :pl, name: 'Normalizacja numerów telefonów (E.164)' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Post-migration PDF generators configuration' }
contribution.attributes = { locale: :pl, name: 'Konfiguracja generatorów PDF po migracji' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Application update (Ruby, Rails and gems)' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja aplikacji (Ruby, Rails i biblioteki)' }
contribution.save

contribution = Contribution.new(params.merge(position: 8))
contribution.attributes = { locale: :en, name: 'Code refactoring' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu' }
contribution.save

contribution = Contribution.new(params.merge(position: 9))
contribution.attributes = { locale: :en, name: 'UX development' }
contribution.attributes = { locale: :pl, name: 'Rozwój UX' }
contribution.save

contribution = Contribution.new(params.merge(position: 10))
contribution.attributes = { locale: :en, name: 'Creating translations' }
contribution.attributes = { locale: :pl, name: 'Tworzenie tłumaczeń' }
contribution.save

contribution = Contribution.new(params.merge(position: 10))
contribution.attributes = { locale: :en, name: 'Implementation of internal invoice posting' }
contribution.attributes = { locale: :pl, name: 'Implementacja wewnętrznego księgowania faktur' }
contribution.save

contribution = Contribution.new(params.merge(position: 11))
contribution.attributes = { locale: :en, name: 'Writing system tests' }
contribution.attributes = { locale: :pl, name: 'Pisanie testów systemowych' }
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

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Admin Dashboard Enhancement' }
contribution.attributes = { locale: :pl, name: 'Ulepszenie pulpitu administratora' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Creating translations' }
contribution.attributes = { locale: :pl, name: 'Tworzenie tłumaczeń' }
contribution.save
