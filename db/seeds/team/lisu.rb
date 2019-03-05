lisu = Person.where(nickname: 'lisu').first_or_initialize
lisu.assign_attributes(
  fullname: 'Grzegorz Lisowski',
  position: 'developer',
  image: 'team/glisowski.jpg',
  github: 'noplisu',
  twitter: 'noplisu',
  facebook: 'lisux',
  linkedin: 'glisowski91',
  skills: %(Backend & Frondend Development, Application Architecture, API Design, Refactoring, Git, Visualization),
  technologies: %(Ruby, Ruby on Rails, JavaScript, EmberJS, RSpec, Minitest, Slim, C#, Unity3D, Cordova),
  introduction_en: %(
<strong>Rails programmer open to different technologies.</strong>
Expert in unsolvable challenges.
Passionate gamer, game creator and regular participant of Global Game Jam.
),
  introduction_pl: %(
<strong>Programista Rails otwarty na różne technologie.</strong>
Ekspert od problemów.
Zapalony gracz, twórca gier komputerowych i regularny uczestnik hackatonów Global Game Jam.
),
  description: 'Ruby on Rails developer'
)
lisu.save
