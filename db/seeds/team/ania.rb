ania = Person.where(nickname: 'ania').first_or_initialize
ania.assign_attributes(
  description: 'Programming adept',
  fullname: 'Anna Bargieł',
  github: 'ania-hm',
  image: 'team/ania.jpg',
  position: 'adept of programming',
  skills: %(Backend Development, Teamwork, GDPR knowledge)
)

I18n.locale = :en
ania.introduction = %(
<strong>Beginner programming enthusiast.</strong>
Getting to know the world of code, tests and libraries.
Mandatory and hardworking.
)

I18n.locale = :pl
ania.introduction = %(
<strong>Początkująca entuzjastka programowania.</strong>
Poznaje świat kodu, testów i bibliotek.
Obowiązkowa i pracowita.
)

ania.save

TechnologicalSkill.where(person_id: ania.id).delete_all

# minitest
%w[
  coffeescript
  css3
  gatsby
  git
  html5
  svg
  mathematica
  postgresql
  rspec
  playwright
  ruby
  ruby-on-rails
  jekyll
  sass
  slim
  sonic-pi
  ubuntu
  heroku
  github
].each do |slug|
  technology = Technology.find_by(slug: slug)
  TechnologicalSkill.where(
    person_id: ania.id,
    technology_id: technology.id
  ).first_or_create
end
