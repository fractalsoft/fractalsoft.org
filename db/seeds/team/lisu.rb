lisu = Person.where(nickname: 'lisu').first_or_initialize
lisu.assign_attributes(
  description: 'Ruby on Rails developer',
  facebook: 'lisux',
  fullname: 'Grzegorz Lisowski',
  github: 'noplisu',
  image: 'team/glisowski.jpg',
  linkedin: 'glisowski91',
  position: 'developer',
  skills: %(Backend & Frondend Development, Application Architecture, API Design, Refactoring, Visualization),
  twitter: 'noplisu'
)

I18n.locale = :en
lisu.introduction = %(
<strong>Rails programmer open to different technologies.</strong>
Expert in unsolvable challenges.
Passionate gamer, game creator and regular participant of Global Game Jam.
Constantly developing skills related to image analysis and neural networks.
)

I18n.locale = :pl
lisu.introduction = %(
<strong>Programista Rails otwarty na różne technologie.</strong>
Ekspert od problemów.
Zapalony gracz, twórca gier komputerowych i regularny uczestnik hackatonów Global Game Jam.
Stale rozwija umiejętności związane z analizą obrazu i sieciami neuronowymi.
)

lisu.save

TechnologicalSkill.where(person_id: lisu.id).delete_all

# sinatra
# minitest
%w[
  javascript
  typescript
  emberjs
  coffeescript
  react
  ruby-on-rails
  ruby
  python
  git
  postgresql
  mysql
  sqlite
  rspec
  docker
  html5
  css3
  sass
  cordova
  csharp
  unity
  slim
  next-js
  jest
  playwright
  ubuntu
  google-cloud
  heroku
  github
  three-js
].each do |slug|
  technology = Technology.find_by(slug:)
  TechnologicalSkill.where(
    person_id: lisu.id,
    technology_id: technology.id
  ).first_or_create
end
