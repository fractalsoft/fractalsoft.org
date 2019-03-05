torrocus = Person.where(nickname: 'torrocus').first_or_initialize
torrocus.assign_attributes(
  fullname: 'Alex Malaszkiewicz',
  position: 'developer',
  image: 'team/amalaszkiewicz.jpg',
  blog: 'https://torrocus.com',
  codeschool: 'torrocus',
  github: 'torrocus',
  twitter: 'torrocus',
  facebook: 'torrocus',
  instagram: 'torrocus',
  linkedin: 'torrocus',
  skills: %(Backend & Frontend Development, Deployment, Teamwork, Leadership, Refactoring, Git, TDD, Agile, Team Building, Linux Server Administration, Remote Work, Product Development),
  technologies: %(Ruby, Ruby on Rails, GNU/Linux, PostgreSQL, Slim, Sass, CoffeeScript, Backbone.js, Marionette, Minitest, RSpec, TestCase, Sidekiq, Ember.js, MySQL, HTML5, CSS3, JavaScript, Docker, Jekyll),
  saying_en: %(
<p>It seems that perfection is attained not when there is nothing more to add, but when there is nothing more to remove.</p>
<footer>Antoine de Saint Exupéry</footer>
),
  saying_pl: %(
<p>Wydaje się, że doskonałość osiąga się nie wtedy, gdy nie ma nic więcej do dodania, ale gdy nie ma nic więcej do usunięcia.</p>
<footer>Antoine de Saint Exupéry</footer>
),
  introduction_en: %(
<strong>Web developer since 1998.</strong>
He had met Ruby 12 years later while using Sinatra and Ruby on Rails.
Madcap for algorithms.
Linux administrator and Open Source ideology evangelist.
),
  introduction_pl: %(
<strong>Web developer od roku 1998.</strong>
Ruby poznał 12 lat później używając Sinatra i Ruby on Rails.
Pasjonat algorytmiki, administrator Linuksa i ewangelista ideologii Open Source.
),
  description: 'Ruby on Rails developer'
)
torrocus.save
