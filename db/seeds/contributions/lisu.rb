# frozen_string_literal: true

lisu = Person.find_by(nickname: 'lisu')

# projects
agricircle = Project.find_by(slug: 'agricircle.com')
analysis_hitdea = Project.find_by(slug: 'linguistic-analysis')
nda_koch = Project.find_by(slug: 'nda-koch')
blog = Project.find_by(slug: 'blog.fractalsoft.org')
fractalsoft = Project.find_by(slug: 'fractalsoft.org')
nda_julia = Project.find_by(slug: 'nda-julia')
game_hitdea = Project.find_by(slug: 'wordmaker')
gobl = Project.find_by(slug: 'gobl')
amenitiz = Project.find_by(slug: 'amenitiz.com')
hitdea = Project.find_by(slug: 'hitdea.com')
julinek_ar = Project.find_by(slug: 'julinek-ar')
marketing_hitdea = Project.find_by(slug: 'ads-system')
nopaperwork = Project.find_by(slug: 'nopaperwork.org')
purpura = Project.find_by(slug: 'purpura.eu')
questions_hitdea = Project.find_by(slug: '20-questions-game')
selecthub = Project.find_by(slug: 'selecthub.com')

# lisu in amenitiz
params = { person_id: lisu.id, project_id: amenitiz.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Integration with Invopop' }
contribution.attributes = { locale: :pl, name: 'Integracja z Invopop' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Invoicing configuration for Mexico' }
contribution.attributes = { locale: :pl, name: 'Konfiguracja fakturowania dla Meksyku' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Backend development in Go' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Go' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Frontend development in React (Storybook)' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w React (Storybook)' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Backend communication using protobuf' }
contribution.attributes = { locale: :pl, name: 'Komunikacja między aplikacjami używając protobuf' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Fixes & pipeline maintenance' }
contribution.attributes = { locale: :pl, name: 'Naprawa i utrzymanie potoków' }
contribution.save

# lisu in gobl
params = { person_id: lisu.id, project_id: gobl.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'JSON to KSeF structure converter (Go)' }
contribution.attributes = { locale: :pl, name: 'Konwerter z JSON na strukturę KSeF (Go)' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'JSON to XRechnung structure converter (Go)' }
contribution.attributes = { locale: :pl, name: 'Konwerter z JSON na strukturę XRechnung (Go)' }
contribution.save

# lisu in NDA Koch
params = { person_id: lisu.id, project_id: nda_koch.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Development in Sinatra (Ruby)' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Sinatra (Ruby)' }
contribution.save

## customer-accounts
contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Customer Accounts Authentication service' }
contribution.attributes = { locale: :pl, name: 'Usługa uwierzytelniania kont klientów' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'React frontend development (Next.js)' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w React (Next.js)' }
contribution.save

# lisu in fractalsoft
params = { person_id: lisu.id, project_id: fractalsoft.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Updating Rails to version 7.x' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja Railsów do wersji 7.x' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Implementation of importmaps' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie importmap' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Updating Bootstrap 3 to Bootstrap 5' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja Bootstrapa 3 na 5' }
contribution.save

# lisu in julinek AR
params = { person_id: lisu.id, project_id: julinek_ar.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Development in Unity' }
contribution.attributes = { locale: :pl, name: 'Rozwój gry w Unity' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Submitting to the App Store' }
contribution.attributes = { locale: :pl, name: 'Zgłoszenie gry do App Store' }
contribution.save

# lisu in NDA Julia
params = { person_id: lisu.id, project_id: nda_julia.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'User conversion experiments' }
contribution.attributes = { locale: :pl, name: 'Eksperymenty zwiększające konwersję użytkowników' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'GDPR compliance tools' }
contribution.attributes = { locale: :pl, name: 'Narzędzia zgodności z RODO' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Frontend development in React' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji frontendowej w React' }
contribution.save

# lisu in blog
params = { person_id: lisu.id, project_id: blog.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Configuration and administration' }
contribution.attributes = { locale: :pl, name: 'Konfiguracja i administrowanie' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Copywriting' }
contribution.attributes = { locale: :pl, name: 'Pisanie artykułów' }
contribution.save

# lisu in nopaperwork
params = { person_id: lisu.id, project_id: nopaperwork.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Integration with polish e-Invoicing (Polish KSeF)' }
contribution.attributes = { locale: :pl, name: 'Integracja z KSeF (Krajowy System e-Faktur)' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Updating Rails to version 7.x' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja Railsów do wersji 7.x' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Implementation of importmaps' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie importmap' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Updating Bootstrap 3 to Bootstrap 5' }
contribution.attributes = { locale: :pl, name: 'Aktualizacja Bootstrapa 3 na 5' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Frontend development in Ember.js' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ember.js' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Create documentation using Swagger' }
contribution.attributes = { locale: :pl, name: 'Tworzenie dokumentacji przy użyciu Swaggera' }
contribution.save

# lisu in purpura
params = { person_id: lisu.id, project_id: purpura.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Deployment to staging' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie na staging (serwer przedprodukcyjny)' }
contribution.save

# lisu in hitdea
params = { person_id: lisu.id, project_id: hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development (Ruby on Rails, Cordova)' }
contribution.attributes = { locale: :pl, name: 'Rozwój części serwerowej aplikacji (Ruby on Rails, Cordova)' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Developing Cordova application' }
contribution.attributes = { locale: :pl, name: 'Opracowanie aplikacji w Cordovie' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Frontend development (Ember.js)' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ember.js' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Developing microservice architecture' }
contribution.attributes = { locale: :pl, name: 'Rozwój architektury mikroserwisowej' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Developing API' }
contribution.attributes = { locale: :pl, name: 'Opracowywanie API' }
contribution.save

# lisu in linguistic analysis
params = { person_id: lisu.id, project_id: analysis_hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

# lisu in 20 questions game for hitdea
params = { person_id: lisu.id, project_id: questions_hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Frontend development' }
contribution.attributes = { locale: :pl, name: 'Rozwój frontendu aplikacji' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Designing and implementation of the game logic' }
contribution.attributes = { locale: :pl, name: 'Projektowanie i implementacja logiki gry' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Implementation of an administration panel' }
contribution.attributes = { locale: :pl, name: 'Implementacja panelu administracyjnego' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Database design' }
contribution.attributes = { locale: :pl, name: 'Projekt bazy danych' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Writing unit and acceptance tests' }
contribution.attributes = { locale: :pl, name: 'Pisanie testów jednostkowych i akceptacyjnych' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Creating translations' }
contribution.attributes = { locale: :pl, name: 'Tworzenie tłumaczeń' }
contribution.save

contribution = Contribution.new(params.merge(position: 8))
contribution.attributes = { locale: :en, name: 'Taking care of framework updates' }
contribution.attributes = { locale: :pl, name: 'Dbanie o aktualizację frameworku' }
contribution.save

contribution = Contribution.new(params.merge(position: 9))
contribution.attributes = { locale: :en, name: 'Designing zero state application' }
contribution.attributes = { locale: :pl, name: 'Zaprojektowanie stanu zerowego aplikacji' }
contribution.save
