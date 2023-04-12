womanonrails = Person.where(nickname: 'womanonrails').first_or_initialize
womanonrails.assign_attributes(
  blog: 'https://womanonrails.com',
  description: 'Ruby on Rails developer',
  facebook: 'womanonrails',
  fullname: 'Agnieszka Malaszkiewicz',
  github: 'womanonrails',
  image: 'team/amatysek.jpg',
  instagram: 'womanonrails',
  linkedin: 'womanonrails',
  nickname: 'womanonrails',
  position: 'developer',
  skills: %(Backend & Frontend Development, Refactoring, TDD, Agile, Scrum, Teamwork, SOA, Remote Work),
  twitter: 'womanonrails',
  vimeo: 'womanonrails'
)

I18n.locale = :en
womanonrails.introduction = %(
<strong>Ruby on Rails developer since 2011.</strong>
Focused on good code quality, refactoring and TDD.
Well-organized and responsible.
Mentor at CoderDojo and Rails Girls workshops.
)
womanonrails.saying = %(
<p>Premature optimization is the root of all evil.</p>
<footer>Donald Knuth</footer>
)

I18n.locale = :pl
womanonrails.introduction = %(
<strong>Programistka Ruby on Rails od 2011 roku.</strong>
Specjalizuje się w dobrej jakości kodu, refaktoringu i TDD.
Odpowiedzialna i dobrze zorganizowana.
Mentor na CoderDojo i Rails Girls.
)
womanonrails.saying = %(
<p>Przedwczesna optymalizacja to źródło wszelkiego zła.</p>
<footer>Donald Knuth</footer>
)

womanonrails.save

TechnologicalSkill.where(person_id: womanonrails.id).delete_all

%w[
  ruby-on-rails
  ruby
  rails-event-store
  rspec
  postgresql
  postgis
  leaflet
  coffeescript
  backbonejs
  marionettejs
  javascript
  react
  graphql
  jquery
  emberjs
  git
  mysql
  sqlite
  redis
  docker
  sass
  less
  html5
  css3
  slim
  aws
  cypress
  ubuntu
  heroku
  github
  selenium-webdriver
  elasticsearch
  solr
  trello
  taiga
  pivotal-tracker
  aws-api-gateway
  aws-cloudwatch
  aws-ec2
  aws-lambda
  aws-s3
  aws-sns
  aws-sqs
].each_with_index do |slug, index|
  technology = Technology.find_by(slug:)
  TechnologicalSkill.where(
    person_id: womanonrails.id,
    position: index + 1,
    technology_id: technology.id
  ).first_or_create
end
