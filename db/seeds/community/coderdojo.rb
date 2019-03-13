coderdojo = Community.where(slug: 'coderdojo').first_or_create

coderdojo_meeting_in_2015_youtube_url = 'https://www.youtube.com/embed/G_tTBd_ei3s'
coderdojo_santa_claus_in_2015_youtube_url = 'https://www.youtube.com/embed/LK95K3IFP_s'
coderdojo_preparing_coolest_project_vimeo_url = 'https://player.vimeo.com/video/221539037'

coderdojo_meeting_in_2015 = youtube_iframe(coderdojo_meeting_in_2015_youtube_url)
coderdojo_santa_claus_in_2015 = youtube_iframe(coderdojo_santa_claus_in_2015_youtube_url)
coderdojo_preparing_coolest_project = vimeo_iframe(coderdojo_preparing_coolest_project_vimeo_url)

coderdojo_logo = File.new('db/seeds/community/coderdojo/coderdojo-logo.png')
coderdojo_logotype = File.new('db/seeds/community/coderdojo/coderdojo-logotype.png')

coderdojo.update(
  position: 3,
  published: true,
  name: 'CoderDojo',
  title_en: 'Learning programming for children and youth - CoderDojo',
  title_pl: 'Nauka programowania dla dzieci i młodzieży - CoderDojo',
  meta_description_en: %(
We teach children how to program and create technologies.
We help develop technical skills from an early age to adult life.
),
  meta_description_pl: %(
Uczymy dzieci jak programować i tworzyć technologie.
Pomagamy rozwijać zdolności techniczne od najmłodszych lat aż po dorosłe życie.
),
  introduction_en: %(
We co-create CoderDojo in Gliwice.
We **teach children and teenagers programming** and technology.
We want the young generation to be able to use new technologies creatively.
We want children to know how the Internet works, what a computer consists of and how to build your own robot.
We focus on acquiring knowledge and sharing it with others.
),
  introduction_pl: %(
Współtworzymy CoderDojo w Gliwicach.
**Uczymy dzieci i młodzież programowania** oraz technologii.
Zależy nam, aby młode pokolenie potrafiło kreatywnie wykorzystywać nowe technologie.
Chcemy aby dzieci wiedziały jak działa Internet, z czego składa się komputer oraz jak zbudować własnego robota.
Stawiamy na zdobywanie wiedzy oraz dzielenie się nią z innymi.

),
  description_en: %(
You can read about what we currently do at CoderDojo in Gliwice on our blog.

#{coderdojo_meeting_in_2015}

#{coderdojo_santa_claus_in_2015}

#{coderdojo_preparing_coolest_project}
),
  description_pl: %(
O tym czym aktualnie zajmujemy się na [CoderDojo w Gliwicach](https://blog.fractalsoft.org/categories/#coderdojo) możecie poczytać na naszym blogu.

#{coderdojo_meeting_in_2015}

#{coderdojo_santa_claus_in_2015}

#{coderdojo_preparing_coolest_project}
)
)
coderdojo.update(logo: coderdojo_logo, logotype: coderdojo_logotype)
