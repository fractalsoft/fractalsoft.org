# frozen_string_literal: true

torrocus = Person.where(nickname: 'torrocus').first_or_initialize
torrocus.assign_attributes(
  blog_url: 'https://torrocus.com/blog/',
  description: 'Ruby on Rails developer',
  facebook: 'torrocus',
  first_name: 'Alex',
  github: 'torrocus',
  image: 'team/alek.jpg',
  instagram: 'torrocus',
  last_name: 'Malaszkiewicz',
  linkedin: 'torrocus',
  position: 'developer',
  published: true,
  skills: %(
            Backend & Frontend Development, Deployment, Teamwork, Leadership, Refactoring, TDD,
            Agile, Team Building, Linux Server Administration, Remote Work, Product Development
          ),
  twitter: 'torrocus',
  website_url: 'https://torrocus.com'
)

I18n.locale = :en
torrocus.introduction = <<~INTRODUCTION.chomp
  **Web developer since 1998.**
  He had met Ruby 12 years later while using Sinatra and Ruby on Rails.
  Madcap for algorithms.
  Linux administrator and Open Source ideology evangelist.
  In free time he explores the secrets of machine learning.
INTRODUCTION

torrocus.saying = <<~SAYING.chomp
  > It seems that perfection is attained not
  > when there is nothing more to add,
  > but when there is nothing more to remove.
  > <footer>Antoine de Saint Exupéry</footer>
SAYING

I18n.locale = :pl
torrocus.introduction = <<~INTRODUCTION.chomp
  **Web developer od roku 1998.**
  Ruby poznał 12 lat później używając Sinatra i Ruby on Rails.
  Pasjonat algorytmiki, administrator Linuksa i ewangelista ideologii Open Source.
  W wolnym czasie zgłębia tajniki uczenia maszynowego.
INTRODUCTION

torrocus.saying = <<~SAYING.chomp
  > Wydaje się, że doskonałość osiąga się nie wtedy,
  > gdy nie ma nic więcej do dodania,
  > ale gdy nie ma nic więcej do usunięcia.
  > <footer>Antoine de Saint Exupéry</footer>
SAYING

torrocus.save

TechnologicalSkill.where(person_id: torrocus.id).delete_all

# testcase
{
  'ruby' => { experience_rating: 92 },
  'ruby-on-rails' => { experience_rating: 84 },
  'sinatra' => { experience_rating: 60 },
  'jekyll' => { experience_rating: 85 },
  'jruby' => { experience_rating: 50 },
  'truffleruby' => { experience_rating: 40 },
  'go' => { experience_rating: 5 },

  'rspec' => { experience_rating: 72 },
  'minitest' => { experience_rating: 52 },
  'playwright' => { experience_rating: 60 },
  'selenium-webdriver' => { experience_rating: 50 },
  'selenium-ide' => { experience_rating: 30 },
  'shoulda-matchers' => { experience_rating: 40 },
  'cuprite' => { experience_rating: 30 },
  'ferrum' => { experience_rating: 20 },

  'git' => { experience_rating: 90 },

  'github' => { experience_rating: 82 },

  'linux' => { experience_rating: 70 },
  'ubuntu' => { experience_rating: 85 },
  'debian' => { experience_rating: 60 },
  'linux-mint' => { experience_rating: 50 },
  'opensuse' => { experience_rating: 40 },
  'slackware' => { experience_rating: 30 },
  'slax-linux' => { experience_rating: 40 },
  'alpine-linux' => { experience_rating: 15 },

  'postgresql' => { experience_rating: 73 },
  'mysql' => { experience_rating: 60 },
  'sqlite' => { experience_rating: 60 },
  'redis' => { experience_rating: 50 },

  'sidekiq' => { experience_rating: 70 },

  'javascript' => { experience_rating: 66 },
  'typescript' => { experience_rating: 45 },
  'react' => { experience_rating: 45 },
  'next-js' => { experience_rating: 55 },
  'coffeescript' => { experience_rating: 55 },
  'emberjs' => { experience_rating: 30 },
  'backbonejs' => { experience_rating: 45 },
  'marionettejs' => { experience_rating: 35 },

  'less' => { experience_rating: 70 },
  'sass' => { experience_rating: 80 },
  'haml' => { experience_rating: 70 },
  'slim' => { experience_rating: 70 },
  'svg' => { experience_rating: 83 },
  'html5' => { experience_rating: 90 },
  'css3' => { experience_rating: 80 },
  'bootstrap' => { experience_rating: 60 },
  'foundation-css' => { experience_rating: 30 },
  'markdown' => { experience_rating: 70 },

  'elasticsearch' => { experience_rating: 60 },
  'solr' => { experience_rating: 50 },
  'opensearch' => { experience_rating: 60 },

  'heroku' => { experience_rating: 50 },
  'digital-ocean' => { experience_rating: 35 },
  'aws' => { experience_rating: 45 },
  'google-cloud' => { experience_rating: 40 },
  'fly-io' => { experience_rating: 35 },

  'docker' => { experience_rating: 77 },
  'terraform' => { experience_rating: 45 },

  'nginx' => { experience_rating: 65 },
  'apache' => { experience_rating: 60 },

  'matlab' => { experience_rating: 70 },

  'trello' => { experience_rating: 82 },
  'taiga' => { experience_rating: 60 },

  'rubocop' => { experience_rating: 85 },
  'eslint' => { experience_rating: 65 },
  'prettier' => { experience_rating: 65 },
  'stylelint' => { experience_rating: 75 },

  'github-actions' => { experience_rating: 85 },
  'jenkins' => { experience_rating: 60 },
  'hound-ci' => { experience_rating: 50 },
  'travis-ci' => { experience_rating: 50 }
}.each_with_index do |(slug, result), index|
  technology = Technology.find_by(slug:)
  TechnologicalSkill.where(
    person_id: torrocus.id,
    position: index + 1,
    rating: result[:experience_rating],
    technology_id: technology.id
  ).first_or_create
end
