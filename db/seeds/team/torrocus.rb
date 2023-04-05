torrocus = Person.where(nickname: 'torrocus').first_or_initialize
torrocus.assign_attributes(
  blog: 'https://torrocus.com/blog/',
  description: 'Ruby on Rails developer',
  facebook: 'torrocus',
  fullname: 'Alex Malaszkiewicz',
  github: 'torrocus',
  image: 'team/amalaszkiewicz.jpg',
  instagram: 'torrocus',
  linkedin: 'torrocus',
  position: 'developer',
  skills: %(
            Backend & Frontend Development, Deployment, Teamwork, Leadership, Refactoring, TDD,
            Agile, Team Building, Linux Server Administration, Remote Work, Product Development
          ),
  twitter: 'torrocus',
  website: 'https://torrocus.com'
)

I18n.locale = :en
torrocus.introduction = %(
<strong>Web developer since 1998.</strong>
He had met Ruby 12 years later while using Sinatra and Ruby on Rails.
Madcap for algorithms.
Linux administrator and Open Source ideology evangelist.
In free time he explores the secrets of machine learning.
)
torrocus.saying = %(
<p>
  It seems that perfection is attained not when there is nothing more to add,
  but when there is nothing more to remove.
</p>
<footer>Antoine de Saint Exupéry</footer>
)

I18n.locale = :pl
torrocus.saying = %(
<p>
  Wydaje się, że doskonałość osiąga się nie wtedy,
  gdy nie ma nic więcej do dodania,
  ale gdy nie ma nic więcej do usunięcia.
</p>
<footer>Antoine de Saint Exupéry</footer>
)
torrocus.introduction = %(
<strong>Web developer od roku 1998.</strong>
Ruby poznał 12 lat później używając Sinatra i Ruby on Rails.
Pasjonat algorytmiki, administrator Linuksa i ewangelista ideologii Open Source.
W wolnym czasie zgłębia tajniki uczenia maszynowego.
)

torrocus.save

TechnologicalSkill.where(person_id: torrocus.id).delete_all

# minitest
# testcase
%w[
  ruby
  ruby-on-rails
  sinatra
  jekyll

  rspec
  selenium-webdriver
  playwright
  shoulda-matchers

  git

  github

  linux
  ubuntu
  debian
  opensuse
  slackware
  slax-linux

  postgresql
  mysql
  sqlite
  redis

  sidekiq

  javascript
  typescript
  react
  next-js
  coffeescript
  emberjs
  backbonejs
  marionettejs

  less
  sass
  haml
  slim
  svg
  html5
  css3

  elasticsearch
  solr
  opensearch

  heroku
  digital-ocean
  aws
  google-cloud

  docker
  terraform

  nginx
  apache
].each_with_index do |slug, index|
  technology = Technology.find_by(slug:)
  TechnologicalSkill.where(
    person_id: torrocus.id,
    position: index + 1,
    technology_id: technology.id
  ).first_or_create
end
