ania = Person.where(nickname: 'ania').first_or_initialize
ania.assign_attributes(
  description: 'Programming adept',
  fullname: 'Anna Bargieł',
  github: 'ania-hm',
  image: 'team/ania.jpg',
  position: 'adept of programming',
  skills: %(
    Backend Development, Teamwork, GDPR knowledge,
    User Technical Support, Willingness to learn, Logical thinking
  )
)

I18n.locale = :en
ania.introduction = <<~INTRODUCTION.chomp
  <strong>Promising programming enthusiast.</strong>
  Learning Ruby and Ruby on Rails with great determination to write high-quality code and tests.
  Striving for continuous improvement of her skills, despite limited experience.
  Willing to take on challenges and work collaboratively.
  Diligent and hardworking.
INTRODUCTION

I18n.locale = :pl
ania.introduction = <<~INTRODUCTION.chomp
  <strong>Rokująca 🎸 entuzjastka programowania.</strong>
  Uczy się Ruby oraz Railsów z wielką determinacją, aby pisać najlepszej jakości kod i testy.
  Dąży do ciągłego doskonalenia swoich umiejętności, mimo niezbyt dużego doświadczenia.
  Gotowa na ciągłe wyzwania i pracę zespołową.
  Sumienna i pracowita.
INTRODUCTION

ania.save

TechnologicalSkill.where(person_id: ania.id).delete_all

# minitest
%w[
  ruby
  ruby-on-rails
  jekyll

  postgresql

  rspec
  playwright

  git
  github

  javascript
  gatsby

  slim
  html5
  css3
  sass
  haml
  svg

  ubuntu

  heroku

  mathematica

  sonic-pi

  trello
].each_with_index do |slug, index|
  technology = Technology.find_by(slug:)
  TechnologicalSkill.where(
    person_id: ania.id,
    position: index + 1,
    technology_id: technology.id
  ).first_or_create
end
