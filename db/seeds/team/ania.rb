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
{
  'ruby' => { experience_rating: 40 },
  'ruby-on-rails' => { experience_rating: 30 },
  'jekyll' => { experience_rating: 15 },

  'postgresql' => { experience_rating: 25 },

  'minitest' => { experience_rating: 25 },
  'playwright' => { experience_rating: 10 },

  'git' => { experience_rating: 40 },
  'github' => { experience_rating: 35 },

  'javascript' => { experience_rating: 10 },
  'gatsby' => { experience_rating: 10 },

  'slim' => { experience_rating: 35 },
  'html5' => { experience_rating: 35 },
  'css3' => { experience_rating: 35 },
  'sass' => { experience_rating: 15 },
  'haml' => { experience_rating: 20 },
  'svg' => { experience_rating: 10 },

  'ubuntu' => { experience_rating: 20 },

  'heroku' => { experience_rating: 10 },

  'mathematica' => { experience_rating: 10 },

  'sonic-pi' => { experience_rating: 10 },

  'trello' => { experience_rating: 30 }
}.each_with_index do |(slug, result), index|
  technology = Technology.find_by(slug:)
  TechnologicalSkill.where(
    person_id: ania.id,
    position: index + 1,
    rating: result[:experience_rating],
    technology_id: technology.id
  ).first_or_create
end
