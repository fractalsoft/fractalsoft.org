womanonrails = Person.where(nickname: 'womanonrails').first_or_initialize
womanonrails.assign_attributes(
  fullname: 'Agnieszka Matysek',
  nickname: 'womanonrails',
  position: 'developer',
  image: 'team/amatysek.jpg',
  blog: 'https://womanonrails.com',
  codeschool: 'womanonrails',
  github: 'womanonrails',
  twitter: 'womanonrails',
  facebook: 'womanonrails',
  instagram: 'womanonrails',
  linkedin: 'womanonrails',
  vimeo: 'womanonrails',
  skills: %(Backend & Frontend Development, Refactoring, TDD, Agile, Scrum, Git, Teamwork, SOA, Remote Work),
  technologies: %(Ruby on Rails, PostgreSQL, Backbone.js, PostGIS, Leaflet, Ruby, Marionette, JavaScript, CoffeeScript, RSpec, jQuery, Ember.js, Slim, MySQL, HTML5, CSS3),
  saying_en: %(
<p>Premature optimization is the root of all evil.</p>
<footer>Donald Knuth</footer>
),
  saying_pl: %(
<p>Przedwczesna optymalizacja to źródło wszelkiego zła.</p>
<footer>Donald Knuth</footer>
),
  introduction_en: %(
<strong>Ruby on Rails developer since 2011.</strong>
Focused on good code quality, refactoring and TDD.
Well-organized and responsible.
Mentor at CoderDojo and Rails Girls workshops.
),
  introduction_pl: %(
<strong>Programista Ruby on Rails od 2011 roku.</strong>
Specjalizuje się w dobrej jakości kodu, refaktoringu i TDD.
Odpowiedzialna i dobrze zorganizowana.
Mentor na CoderDojo i Rails Girls.
),
  description: 'Ruby on Rails developer'
)
womanonrails.save
