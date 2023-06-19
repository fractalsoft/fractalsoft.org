lisu = Person.where(nickname: 'lisu').first_or_initialize
lisu.assign_attributes(
  description: 'Ruby on Rails developer',
  facebook: 'lisux',
  first_name: 'Grzegorz',
  github: 'noplisu',
  image: 'team/glisowski.jpg',
  last_name: 'Lisowski',
  linkedin: 'glisowski91',
  position: 'developer',
  skills: %(Backend & Frondend Development, Application Architecture, API Design, Refactoring, Visualization)
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
Stale rozwija umiejętności związane z analizą obrazów i sieciami neuronowymi.
)

lisu.save

TechnologicalSkill.where(person_id: lisu.id).delete_all

# minitest
{
  'javascript' => { experience_rating: 70 },
  'typescript' => { experience_rating: 60 },
  'emberjs' => { experience_rating: 70 },
  'coffeescript' => { experience_rating: 50 },
  'react' => { experience_rating: 70 },
  'ruby-on-rails' => { experience_rating: 60 },
  'ruby' => { experience_rating: 70 },
  'python' => { experience_rating: 50 },
  'git' => { experience_rating: 70 },
  'postgresql' => { experience_rating: 50 },
  'mysql' => { experience_rating: 50 },
  'sqlite' => { experience_rating: 50 },
  'rspec' => { experience_rating: 50 },
  'docker' => { experience_rating: 50 },
  'html5' => { experience_rating: 90 },
  'css3' => { experience_rating: 50 },
  'sass' => { experience_rating: 60 },
  'cordova' => { experience_rating: 70 },
  'csharp' => { experience_rating: 70 },
  'unity' => { experience_rating: 85 },
  'slim' => { experience_rating: 50 },
  'next-js' => { experience_rating: 60 },
  'jest' => { experience_rating: 50 },
  'playwright' => { experience_rating: 50 },
  'ubuntu' => { experience_rating: 70 },
  'google-cloud' => { experience_rating: 20 },
  'heroku' => { experience_rating: 30 },
  'github' => { experience_rating: 70 },
  'three-js' => { experience_rating: 50 },
  'apple' => { experience_rating: 70 },
  'sinatra' => { experience_rating: 40 },
  'trello' => { experience_rating: 80 },
  'taiga' => { experience_rating: 60 },
  'kafka' => { experience_rating: 10 },
  'solr' => { experience_rating: 50 },
  'elasticsearch' => { experience_rating: 60 },
  'opensearch' => { experience_rating: 60 },
  'selenium-webdriver' => { experience_rating: 50 },
  'terraform' => { experience_rating: 45 },
  'nginx' => { experience_rating: 45 },
  'matlab' => { experience_rating: 40 },
  'rubocop' => { experience_rating: 70 },
  'eslint' => { experience_rating: 70 },
  'prettier' => { experience_rating: 70 },
  'github-actions' => { experience_rating: 65 },
  'jenkins' => { experience_rating: 30 }
}.each_with_index do |(slug, result), index|
  technology = Technology.find_by(slug:)
  next unless technology

  TechnologicalSkill.where(
    person_id: lisu.id,
    position: index + 1,
    rating: result[:experience_rating],
    technology_id: technology.id
  ).first_or_create
end
