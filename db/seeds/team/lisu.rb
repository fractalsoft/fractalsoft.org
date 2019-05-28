lisu = Person.where(nickname: 'lisu').first_or_initialize
lisu.assign_attributes(
  description: 'Ruby on Rails developer',
  facebook: 'lisux',
  fullname: 'Grzegorz Lisowski',
  github: 'noplisu',
  image: 'team/glisowski.jpg',
  linkedin: 'glisowski91',
  position: 'developer',
  skills: %(Backend & Frondend Development, Application Architecture, API Design, Refactoring, Git, Visualization),
  technologies: %(Ruby, Ruby on Rails, JavaScript, EmberJS, RSpec, Minitest, Slim, C#, Unity3D, Cordova),
  twitter: 'noplisu'
)

I18n.locale = :en
lisu.introduction = %(
<strong>Rails programmer open to different technologies.</strong>
Expert in unsolvable challenges.
Passionate gamer, game creator and regular participant of Global Game Jam.
)

I18n.locale = :pl
lisu.introduction = %(
<strong>Programista Rails otwarty na różne technologie.</strong>
Ekspert od problemów.
Zapalony gracz, twórca gier komputerowych i regularny uczestnik hackatonów Global Game Jam.
)

lisu.save
