womanonrails = Person.where(nickname: 'womanonrails').first_or_initialize
womanonrails.assign_attributes(
  blog_url: 'https://womanonrails.com',
  description: 'Ruby on Rails developer',
  facebook: 'womanonrails',
  first_name: 'Agnieszka',
  github: 'womanonrails',
  image: 'team/amatysek.jpg',
  instagram: 'womanonrails',
  last_name: 'Malaszkiewicz',
  linkedin: 'womanonrails',
  nickname: 'womanonrails',
  position: 'developer',
  skills: %(Backend & Frontend Development, Refactoring, TDD, Agile, Scrum, Teamwork, SOA, Remote Work),
  twitter: 'womanonrails',
  vimeo: 'womanonrails'
)

I18n.locale = :en
womanonrails.introduction = <<~INTRODUCTION.chomp
  <strong>Ruby on Rails developer since 2011.</strong>
  Focused on good code quality, refactoring and TDD.
  Well-organized and responsible.
  Mentor at CoderDojo and Rails Girls workshops.
INTRODUCTION

womanonrails.saying = <<~SAYING.chomp
  <p>Premature optimization is the root of all evil.</p>
  <footer>Donald Knuth</footer>
SAYING

I18n.locale = :pl
womanonrails.introduction = <<~INTRODUCTION.chomp
  <strong>Programistka Ruby on Rails od 2011 roku.</strong>
  Specjalizuje się w dobrej jakości kodu, refaktoringu i TDD.
  Odpowiedzialna i dobrze zorganizowana.
  Mentor na CoderDojo i Rails Girls.
INTRODUCTION

womanonrails.saying = <<~SAYING.chomp
  <p>Przedwczesna optymalizacja to źródło wszelkiego zła.</p>
  <footer>Donald Knuth</footer>
SAYING

womanonrails.save

TechnologicalSkill.where(person_id: womanonrails.id).delete_all

{
  'ruby' => { experience_rating: 80 },
  'ruby-on-rails' => { experience_rating: 70 },
  'git' => { experience_rating: 80 },
  'rails-event-store' => { experience_rating: 60 },
  'sidekiq' => { experience_rating: 50 },

  'postgresql' => { experience_rating: 70 },
  'postgis' => { experience_rating: 60 },
  'mysql' => { experience_rating: 60 },
  'sqlite' => { experience_rating: 90 },
  'elasticsearch' => { experience_rating: 50 },
  'solr' => { experience_rating: 50 },
  'redis' => { experience_rating: 50 },

  'rspec' => { experience_rating: 70 },
  'selenium-webdriver' => { experience_rating: 60 },
  'cypress' => { experience_rating: 40 },

  'github' => { experience_rating: 90 },
  'heroku' => { experience_rating: 80 },
  'pivotal-tracker' => { experience_rating: 80 },
  'taiga' => { experience_rating: 50 },
  'trello' => { experience_rating: 80 },

  'ubuntu' => { experience_rating: 70 },
  'docker' => { experience_rating: 60 },

  'javascript' => { experience_rating: 60 },
  'coffeescript' => { experience_rating: 60 },
  'jquery' => { experience_rating: 70 },
  'react' => { experience_rating: 60 },
  'leaflet' => { experience_rating: 80 },
  'backbonejs' => { experience_rating: 60 },
  'emberjs' => { experience_rating: 60 },
  'marionettejs' => { experience_rating: 60 },

  'sass' => { experience_rating: 70 },
  'css3' => { experience_rating: 60 },
  'html5' => { experience_rating: 90 },
  'slim' => { experience_rating: 90 },
  'graphql' => { experience_rating: 60 },
  'less' => { experience_rating: 70 },

  'aws' => { experience_rating: 30 },
  'aws-s3' => { experience_rating: 40 },
  'aws-lambda' => { experience_rating: 40 },
  'aws-api-gateway' => { experience_rating: 30 },
  'aws-cloudwatch' => { experience_rating: 20 },
  'aws-ec2' => { experience_rating: 30 },
  'aws-sns' => { experience_rating: 30 },
  'aws-sqs' => { experience_rating: 30 },

  'rubocop' => { experience_rating: 90 },

  'github-actions' => { experience_rating: 30 },
  'circle-ci' => { experience_rating: 30 },

  'jekyll' => { experience_rating: 60 },

  'mathematica' => { experience_rating: 40 }
}.each_with_index do |(slug, result), index|
  technology = Technology.find_by(slug:)
  TechnologicalSkill.where(
    person_id: womanonrails.id,
    position: index + 1,
    rating: result[:experience_rating],
    technology_id: technology.id
  ).first_or_create
end
