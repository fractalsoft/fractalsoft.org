torrocus = Person.where(nickname: 'torrocus').first_or_initialize
torrocus.assign_attributes(
  blog: 'https://torrocus.com',
  codeschool: 'torrocus',
  description: 'Ruby on Rails developer',
  facebook: 'torrocus',
  fullname: 'Alex Malaszkiewicz',
  github: 'torrocus',
  image: 'team/amalaszkiewicz.jpg',
  instagram: 'torrocus',
  linkedin: 'torrocus',
  position: 'developer',
  skills: %(Backend & Frontend Development, Deployment, Teamwork, Leadership, Refactoring, Git, TDD, Agile, Team Building, Linux Server Administration, Remote Work, Product Development),
  technologies: %(Ruby, Ruby on Rails, GNU/Linux, PostgreSQL, Slim, Sass, CoffeeScript, Backbone.js, Marionette, Minitest, RSpec, TestCase, Sidekiq, Ember.js, MySQL, HTML5, CSS3, JavaScript, Docker, Jekyll),
  twitter: 'torrocus'
)

I18n.locale = :en
torrocus.introduction = %(
<strong>Web developer since 1998.</strong>
He had met Ruby 12 years later while using Sinatra and Ruby on Rails.
Madcap for algorithms.
Linux administrator and Open Source ideology evangelist.
)
torrocus.saying = %(
<p>It seems that perfection is attained not when there is nothing more to add, but when there is nothing more to remove.</p>
<footer>Antoine de Saint Exupéry</footer>
)

I18n.locale = :pl
torrocus.saying = %(
<p>Wydaje się, że doskonałość osiąga się nie wtedy, gdy nie ma nic więcej do dodania, ale gdy nie ma nic więcej do usunięcia.</p>
<footer>Antoine de Saint Exupéry</footer>
)
torrocus.introduction = %(
<strong>Web developer od roku 1998.</strong>
Ruby poznał 12 lat później używając Sinatra i Ruby on Rails.
Pasjonat algorytmiki, administrator Linuksa i ewangelista ideologii Open Source.
)

torrocus.save
