# frozen_string_literal: true

torrocus = Person.find_by(nickname: 'torrocus')

# projects
agricircle = Project.find_by(slug: 'agricircle.com')
analysis_hitdea = Project.find_by(slug: 'linguistic-analysis')
andy = Project.find_by(slug: 'andy-drink-delivery')
blog = Project.find_by(slug: 'blog.fractalsoft.org')
fractalsoft = Project.find_by(slug: 'fractalsoft.org')
futurelearn = Project.find_by(slug: 'futurelearn.com')
game_hitdea = Project.find_by(slug: 'wordmaker')
hitdea = Project.find_by(slug: 'hitdea.com')
marketing_hitdea = Project.find_by(slug: 'ads-system')
nopaperwork = Project.find_by(slug: 'nopaperwork.org')
purpura = Project.find_by(slug: 'purpura.eu')
questions_hitdea = Project.find_by(slug: '20-questions-game')
selecthub = Project.find_by(slug: 'selecthub.com')
tmc_ops = Project.find_by(slug: 'tmc-ops')

# torrocus in nopaperwork
params = { person_id: torrocus.id, project_id: nopaperwork.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Architecture design' }
contribution.attributes = { locale: :pl, name: 'Projektowanie architektury' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Code refactoring and optimization' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu i optymalizacja' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'UX development' }
contribution.attributes = { locale: :pl, name: 'Rozwój UX' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Building service to SAF-T' }
contribution.attributes = { locale: :pl, name: 'Budowa serwisu obsługi do JPK' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Deployment to production' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie na produkcję' }
contribution.save

contribution = Contribution.new(params.merge(position: 8))
contribution.attributes = { locale: :en, name: 'Migration from Heroku to another platform' }
contribution.attributes = { locale: :pl, name: 'Migracja z Heroku na inną platformę' }
contribution.save

# torrocus in purpura
params = { person_id: torrocus.id, project_id: purpura.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Deployment to production' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie na produkcję' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Migration to other platforms' }
contribution.attributes = { locale: :pl, name: 'Migracja na inne platformy' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Ruby gems dependency reduction' }
contribution.attributes = { locale: :pl, name: 'Redukcja zależności od zewnętrznych gemów' }
contribution.save

# torrocus in blog
params = { person_id: torrocus.id, project_id: blog.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Configuration and administration' }
contribution.attributes = { locale: :pl, name: 'Konfiguracja i administrowanie' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Copywriting' }
contribution.attributes = { locale: :pl, name: 'Pisanie artykułów' }
contribution.save

# torrocus in fractalsoft
params = { person_id: torrocus.id, project_id: fractalsoft.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Deployment to production' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie na produkcję' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Code refactoring and optimization' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu i optymalizacja' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Architecture design' }
contribution.attributes = { locale: :pl, name: 'Projektowanie architektury' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'UX development' }
contribution.attributes = { locale: :pl, name: 'Rozwój UX' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Upgrade Rails and Ruby version' }
contribution.attributes = { locale: :pl, name: 'Aktualizacje wersji Rails i Ruby' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Code quality process automation' }
contribution.attributes = { locale: :pl, name: 'Automatyzacja procesu jakości kodu' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Migration of app between platforms' }
contribution.attributes = { locale: :pl, name: 'Migracja aplikacji pomiędzy platformami' }
contribution.save

contribution = Contribution.new(params.merge(position: 8))
contribution.attributes = { locale: :en, name: 'Design of application data structure' }
contribution.attributes = { locale: :pl, name: 'Projektowanie struktury danych aplikacji' }
contribution.save

# torrocus in SelectHub
params = { person_id: torrocus.id, project_id: selecthub.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails 3.2' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails 3.2' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Frontend development (Backbone.js, Marionette)' }
contribution.attributes = { locale: :pl, name: 'Rozwój Frontendu (Backbone.js, Marionette)' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Code refactoring' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu' }
contribution.save

# torrocus in hitdea
params = { person_id: torrocus.id, project_id: hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails 4.2' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails 4.2 po stronie serwerowej' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Project management' }
contribution.attributes = { locale: :pl, name: 'Zarządzanie projektem' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'SOA design & development' }
contribution.attributes = { locale: :pl, name: 'Projektowanie i wdrożenie SOA' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Database design' }
contribution.attributes = { locale: :pl, name: 'Projektowanie bazy danych' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'UX development' }
contribution.attributes = { locale: :pl, name: 'Rozwój UX' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Deployment to production' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie na produkcję' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Bash scripts to automate workflow' }
contribution.attributes = { locale: :pl, name: 'Skrypty bash do automatyzacji procesów' }
contribution.save

contribution = Contribution.new(params.merge(position: 8))
contribution.attributes = { locale: :en, name: 'Code refactoring' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu' }
contribution.save

contribution = Contribution.new(params.merge(position: 9))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 10))
contribution.attributes = { locale: :en, name: 'Taking care of software update (Ruby, Rails, gems)' }
contribution.attributes = { locale: :pl, name: 'Dbanie o aktualizacje oprogramowania (Ruby, Rails, gems)' }
contribution.save

contribution = Contribution.new(params.merge(position: 11))
contribution.attributes = { locale: :en, name: 'Assistance to choosing of technology' }
contribution.attributes = { locale: :pl, name: 'Pomoc w wyborze technologii' }
contribution.save

contribution = Contribution.new(params.merge(position: 12))
contribution.attributes = { locale: :en, name: 'Data migration from MySQL to PostgreSQL' }
contribution.attributes = { locale: :pl, name: 'Migracja danych z bazy MySQL do PostgreSQL' }
contribution.save

# torrocus in marketing hitdea
params = { person_id: torrocus.id, project_id: marketing_hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Ruby on Rails development' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Architecture design' }
contribution.attributes = { locale: :pl, name: 'Projektowanie architektury' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Code refactoring' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Production deployment' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie na produkcję' }
contribution.save

# torrocus in analysis hitdea
params = { person_id: torrocus.id, project_id: analysis_hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails po stronie serwerowej' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Database design architecture' }
contribution.attributes = { locale: :pl, name: 'Projektowanie architektury bazy danych' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Code refactoring' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Upgrade Ruby and Rails' }
contribution.attributes = { locale: :pl, name: 'Aktualizacje języka Ruby i frameworku Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Testing and production deployment' }
contribution.attributes = { locale: :pl, name: 'Testowanie i wdrożenie na produkcję' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Development & production environment setup (MySQL, Solr)' }
contribution.attributes = { locale: :pl, name: 'Ustawienie środowiska programistycznego i produkcyjnego (MySQL, Solr)' }
contribution.save

# torrocus in game hitdea
params = { person_id: torrocus.id, project_id: game_hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Architecture and implementation of most of application the functionality' }
contribution.attributes = { locale: :pl, name: 'Projekt architektury i implementacja większości funkcjonalności' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Ruby on Rails development and deployment' }
contribution.attributes = { locale: :pl, name: 'Rozwój i wdrożenie aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Extraction of generic functionality to gems' }
contribution.attributes = { locale: :pl, name: 'Wydzielenie ogólnych funkcjonalności do gemów' }
contribution.save

# torrocus in 20 questions game for hitdea
params = { person_id: torrocus.id, project_id: questions_hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Project management' }
contribution.attributes = { locale: :pl, name: 'Zarządzanie projektem' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Deployment to production' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie na produkcję' }
contribution.save

# torrocus in futurelearn
params = { person_id: torrocus.id, project_id: futurelearn.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

## CI (Continuous Integration)
contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Reusable workflows in the CI pipeline' }
contribution.attributes = { locale: :pl, name: 'Wdrożenie przepływu pracy wielokrotnego użytku w potoku CI' }
contribution.save

## RTE (Rich Text Editor)
contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Rich Text Editor in Course Creator' }
contribution.attributes = { locale: :pl, name: 'Edytor tekstu sformatowanego w Kreatorze kursów' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Bulk revocation for organisation memberships' }
contribution.attributes = { locale: :pl, name: 'Masowe wycofanie członkostwa w organizacji' }
contribution.save

## SAML (Security Assertion Markup Language)
## SSO (Single Sign-On)
contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Support for partners in setting up SAML SSO' }
contribution.attributes = { locale: :pl, name: 'Wsparcie partnerów w ustawianiu SAML SSO' }
contribution.save

## LTI (Learning Tools Interoperability)
contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Maintain and develop integration with LTI' }
contribution.attributes = { locale: :pl, name: 'Utrzymanie i rozwój integracji z LTI' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Expert Track in Learning Manager' }
contribution.attributes = { locale: :pl, name: 'Ścieżka ekspercka w Menedżerze nauki' }
contribution.save

contribution = Contribution.new(params.merge(position: 8))
contribution.attributes = { locale: :en, name: 'Strong password enforcement feature' }
contribution.attributes = { locale: :pl, name: 'Wymuszanie ustawiania silnego hasła' }
contribution.save

contribution = Contribution.new(params.merge(position: 9))
contribution.attributes = { locale: :en, name: 'API endpoint improvements' }
contribution.attributes = { locale: :pl, name: 'Ulepszenia punktów końcowych interfejsu API' }
contribution.save

contribution = Contribution.new(params.merge(position: 10))
contribution.attributes = { locale: :en, name: 'Flaky tests reduction' }
contribution.attributes = { locale: :pl, name: 'Redukcja niestabilnych testów' }
contribution.save

contribution = Contribution.new(params.merge(position: 11))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

# torrocus in andy
params = { person_id: torrocus.id, project_id: andy.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Development in Next.js' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Next.js' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Optimize end-to-end testing for CI' }
contribution.attributes = { locale: :pl, name: 'Optymalizacja kompleksowych testów E2E na CI' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Custom automated process improvement' }
contribution.attributes = { locale: :pl, name: 'Ulepszanie automatycznych procesów' }
contribution.save

## TMS (Transport Management Software)
contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'TMS Order Monitoring service' }
contribution.attributes = { locale: :pl, name: 'Usługa monitorowania zamówień TMS' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Development in Ruby' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Eliminate flaky tests' }
contribution.attributes = { locale: :pl, name: 'Wyeliminowanie niestabilnych testów' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 8))
contribution.attributes = { locale: :en, name: 'Internal CLI tool development' }
contribution.attributes = { locale: :pl, name: 'Rozwój wewnętrznego narzędzia CLI' }
contribution.save
