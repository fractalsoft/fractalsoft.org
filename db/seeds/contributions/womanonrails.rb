# frozen_string_literal: true

womanonrails = Person.find_by(nickname: 'womanonrails')

# projects
agricircle = Project.find_by(slug: 'agricircle.com')
analysis_hitdea = Project.find_by(slug: 'linguistic-analysis')
blog = Project.find_by(slug: 'blog.fractalsoft.org')
fractalsoft = Project.find_by(slug: 'fractalsoft.org')
game_hitdea = Project.find_by(slug: 'wordmaker')
hitdea = Project.find_by(slug: 'hitdea.com')
marketing_hitdea = Project.find_by(slug: 'ads-system')
nopaperwork = Project.find_by(slug: 'nopaperwork.org')
purpura = Project.find_by(slug: 'purpura.eu')
questions_hitdea = Project.find_by(slug: '20-questions-game')
selecthub = Project.find_by(slug: 'selecthub.com')
nda_cantor = Project.find_by(slug: 'nda-cantor')

# WomanOnRails in NDA Cantor

params = { person_id: womanonrails.id, project_id: nda_cantor.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Moving from Pub/Sub to Rails Event Store' }
contribution.attributes = { locale: :pl, name: 'Przejście z Pub/Sub na Rails Event Store' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Code refactoring and optimization' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu i optymalizacja' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Bugs resolving' }
contribution.attributes = { locale: :pl, name: 'Naprawianie błędów' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Automate SMS flow process for bookings' }
contribution.attributes = { locale: :pl, name: 'Automatyzacja procesu SMS w rezerwacjach' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Full integration with SNT' }
contribution.attributes = { locale: :pl, name: 'Pełna integracja z SNT' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Multiple account creation automation (Google, Facebook, RemoteLock)' }
contribution.attributes = { locale: :pl, name: 'Automatyzacja tworzenia wielu kont (Google, Facebook, RemoteLock)' }
contribution.save

contribution = Contribution.new(params.merge(position: 8))
contribution.attributes = { locale: :en, name: 'Phone number normalization (standard E.164)' }
contribution.attributes = { locale: :pl, name: 'Normalizacja numerów telefonów (E.164)' }
contribution.save

contribution = Contribution.new(params.merge(position: 9))
contribution.attributes = { locale: :en, name: 'Manual RemoteLock sync (electronic locks)' }
contribution.attributes = { locale: :pl, name: 'Ręczna synchronizacja RemoteLock (zamki elektroniczne)' }
contribution.save

contribution = Contribution.new(params.merge(position: 10))
contribution.attributes = { locale: :en, name: 'API for reporting to PDF & CSV' }
contribution.attributes = { locale: :pl, name: 'API do raportowania do PDF i CSV' }
contribution.save

contribution = Contribution.new(params.merge(position: 11))
contribution.attributes = { locale: :en, name: 'Twilio integration' }
contribution.attributes = { locale: :pl, name: 'Integracja z API Twilio' }
contribution.save

contribution = Contribution.new(params.merge(position: 12))
contribution.attributes = { locale: :en, name: 'Import TrackHS messages' }
contribution.attributes = { locale: :pl, name: 'Import wiadomości z TrackHS' }
contribution.save

# WomanOnRails in AgriCircle
params = { person_id: womanonrails.id, project_id: agricircle.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Code refactoring and optimization' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu i optymalizacja' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Create gems in Ruby' }
contribution.attributes = { locale: :pl, name: 'Tworzenie bibliotek (gem) w Ruby' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Geodata service in export / import shapefiles' }
contribution.attributes = { locale: :pl, name: 'Obsługa geo data w eksporcie i imporcie shapefiles' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Build API based on JSON' }
contribution.attributes = { locale: :pl, name: 'Tworzenie API opartego na JSON' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Integration with external API' }
contribution.attributes = { locale: :pl, name: 'Integracja z zewnętrznymi API' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Frontend development (Backbone.js, Marionette)' }
contribution.attributes = { locale: :pl, name: 'Rozwój Frontendu (Backbone.js, Marionette)' }
contribution.save

# WomanOnRails in blog
params = { person_id: womanonrails.id, project_id: blog.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Copywriting' }
contribution.attributes = { locale: :pl, name: 'Pisanie artykułów' }
contribution.save

# WomanOnRails in fractalsoft
params = { person_id: womanonrails.id, project_id: fractalsoft.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'UX development' }
contribution.attributes = { locale: :pl, name: 'Rozwój UX' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Development in Ruby on Rails' }
contribution.attributes = { locale: :pl, name: 'Rozwój aplikacji w Ruby on Rails' }
contribution.save

# WomanOnRails in hitdea
params = { person_id: womanonrails.id, project_id: hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend architecture' }
contribution.attributes = { locale: :pl, name: 'Architektura części serwerowej' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Database design' }
contribution.attributes = { locale: :pl, name: 'Projektowanie struktury bazy danych' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Build API based on JSON API' }
contribution.attributes = { locale: :pl, name: 'Tworzenie API opartego na JSON API' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Backend development in Rails 4.1' }
contribution.attributes = { locale: :pl, name: 'Rozwój Backendu w Ruby on Rails 4.1' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Frontend development (Ember.js, jQuery, Bootstrap)' }
contribution.attributes = { locale: :pl, name: 'Rozwój Frontendu (Ember.js, jQuery, Boostrap)' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'API integration' }
contribution.attributes = { locale: :pl, name: 'Integracja z API' }
contribution.save

contribution = Contribution.new(params.merge(position: 7))
contribution.attributes = { locale: :en, name: 'Upgrade Rails and Ruby version' }
contribution.attributes = { locale: :pl, name: 'Aktualizacje wersji Rails i Ruby' }
contribution.save

contribution = Contribution.new(params.merge(position: 8))
contribution.attributes = { locale: :en, name: 'Browsers data synchronization using faye' }
contribution.attributes = { locale: :pl, name: 'Synchronizacja danych przeglądarki przy użyciu faye' }
contribution.save

# WomanOnRails in marketing hitdea
params = { person_id: womanonrails.id, project_id: marketing_hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend architecture' }
contribution.attributes = { locale: :pl, name: 'Architektura części serwerowej' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Database design' }
contribution.attributes = { locale: :pl, name: 'Projektowanie bazy danych' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Upgrade Rails and Ruby version' }
contribution.attributes = { locale: :pl, name: 'Aktualizacje wersji Rails i Ruby' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Backend development in Rails 4.1' }
contribution.attributes = { locale: :pl, name: 'Rozwój Backendu w Ruby on Rails 4.1' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Frontend development (jQuery, Bootstrap)' }
contribution.attributes = { locale: :pl, name: 'Rozwój Frontendu (jQuery, Boostrap)' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'API integration' }
contribution.attributes = { locale: :pl, name: 'Integracja z API' }
contribution.save

# WomanOnRails in linguistic analysis
params = { person_id: womanonrails.id, project_id: analysis_hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend development in Rails 4.1' }
contribution.attributes = { locale: :pl, name: 'Rozwój Backendu w Ruby on Rails 4.1' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Upgrade Rails and Ruby version' }
contribution.attributes = { locale: :pl, name: 'Aktualizacje wersji Rails i Ruby' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'Solr optimization' }
contribution.attributes = { locale: :pl, name: 'Optymalizacja działania Solr' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Code refactoring and optimization' }
contribution.attributes = { locale: :pl, name: 'Refaktoring kodu i optymalizacja' }
contribution.save

# WomanOnRails in game hitdea
params = { person_id: womanonrails.id, project_id: game_hitdea.id }

contribution = Contribution.new(params.merge(position: 1))
contribution.attributes = { locale: :en, name: 'Backend architecture' }
contribution.attributes = { locale: :pl, name: 'Architektura części serwerowej' }
contribution.save

contribution = Contribution.new(params.merge(position: 2))
contribution.attributes = { locale: :en, name: 'Database design' }
contribution.attributes = { locale: :pl, name: 'Projektowanie bazy danych' }
contribution.save

contribution = Contribution.new(params.merge(position: 3))
contribution.attributes = { locale: :en, name: 'API integration' }
contribution.attributes = { locale: :pl, name: 'Integracja z API' }
contribution.save

contribution = Contribution.new(params.merge(position: 4))
contribution.attributes = { locale: :en, name: 'Frontend development (jQuery, Bootstrap)' }
contribution.attributes = { locale: :pl, name: 'Rozwój Frontendu (jQuery, Boostrap)' }
contribution.save

contribution = Contribution.new(params.merge(position: 5))
contribution.attributes = { locale: :en, name: 'Backend development in Rails 4.1' }
contribution.attributes = { locale: :pl, name: 'Rozwój Backendu w Ruby on Rails 4.1' }
contribution.save

contribution = Contribution.new(params.merge(position: 6))
contribution.attributes = { locale: :en, name: 'Upgrade Rails and Ruby version' }
contribution.attributes = { locale: :pl, name: 'Aktualizacje wersji Rails i Ruby' }
contribution.save
