# Global Game Jam
# https://globalgamejam.org/about
# https://en.wikipedia.org/wiki/Global_Game_Jam
# https://en.wikipedia.org/wiki/Game_jam
# 24-26.01.2014
# 23-25.01.2015
# 29-31.01.2016
# 26-28.01.2018
# 25-27.01.2019
ggj = Community.where(slug: 'global-game-jam').first_or_create

ggj_cieszyn2016_youtube_url = 'https://www.youtube.com/embed/-g4BbTNCgck'
ggj_cieszyn2018_facebook_url = 'https://www.facebook.com/lagfestival/videos/911042585734788/'
ggj_cieszyn2019_vimeo_url = 'https://player.vimeo.com/video/320432291'

ggj_cieszyn2016 = youtube_iframe(ggj_cieszyn2016_youtube_url)
ggj_cieszyn2018 = facebook_iframe(ggj_cieszyn2018_facebook_url)
ggj_cieszyn2019 = vimeo_iframe(ggj_cieszyn2019_vimeo_url)

ggj_logo = File.new('db/seeds/community/ggj/ggj-logo.png')

ggj.assign_attributes(
  position: 4,
  published: true,
  name: 'Global Game Jam &reg;'
)

I18n.locale = :en

ggj.description = %(
GGJ is a **hackathon for creating games**.
Within 48 hours, teams from around the world create different games
on a specific topic.
It is a cyclical event and takes place every year.

For several years we have regularly participated in Global Game Jams in Cieszyn.
Each project we create is different and better from year to year.
By participating in this hackathon, we strengthen our friendships
and gain more and more experience in game development.
We build a local community of developers and game designers.

Game Jams in which we participated:

- Game Jam 2014 in Cieszyn
- Game Jam 2015 in Cieszyn
- Game Jam 2016 in Cieszyn
- Game Jam 2018 in Cieszyn
- Game Jam 2019 in Cieszyn


#{ggj_cieszyn2016}

#{ggj_cieszyn2018}

#{ggj_cieszyn2019}
)

ggj.introduction = %(
GGJ is a **hackathon for creating games**.
Within 48 hours, teams from around the world create different games
on a specific topic.
It is a cyclical event and takes place every year.

For several years we have regularly participated in Global Game Jams in Cieszyn.
Each project we create is different and better from year to year.
By participating in this hackathon, we strengthen our friendships
and gain more and more experience in game development.
We build a local community of developers and game designers.
)

ggj.meta_description = %(
We are building games in Unity for sport in one weekend.
Programming games on time is a challenge for us and we do it every year.
)

ggj.title = 'Game Development in 48 hours - Global Game Jam'

I18n.locale = :pl

ggj.description = %(
GGJ to **hackaton tworzenia gier**.
W ciągu 48 godzin zespoły z całego świata tworzą różne gry
o określonej tematyce.
Jest to wydarzenie cykliczne i odbywa się co roku.

Od kilku lat regularnie uczestniczymy w Global Game Jamach w Cieszynie.
Każdy tworzony przez nas projekt jest inny i w każdym roku coraz lepszy.
Uczestnicząc w tym hackatonie umacniamy nasze przyjaźnie
oraz zdobywamy coraz większe doświadczenie w game devie.
Budujemy lokalną społeczność twórców i projektantów gier.

Game Jamy w których braliśmy udział:

- Game Jam 2014 w Cieszynie
- Game Jam 2015 w Cieszynie
- Game Jam 2016 w Cieszynie
- [Game Jam 2018 w Cieszynie](https://blog.fractalsoft.org/news/2019/01/programujemy-gry-game-jam-2018/)
- Game Jam 2019 w Cieszynie


#{ggj_cieszyn2016}

#{ggj_cieszyn2018}

#{ggj_cieszyn2019}
)

ggj.introduction = %(
GGJ to **hackaton tworzenia gier**.
W ciągu 48 godzin zespoły z całego świata tworzą różne gry
o określonej tematyce.
Jest to wydarzenie cykliczne i odbywa się co roku.

Od kilku lat regularnie uczestniczymy w Global Game Jamach w Cieszynie.
Każdy tworzony przez nas projekt jest inny i w każdym roku coraz lepszy.
Uczestnicząc w tym hackatonie umacniamy nasze przyjaźnie
oraz zdobywamy coraz większe doświadczenie w game devie.
Budujemy lokalną społeczność twórców i projektantów gier.
)

ggj.meta_description = %(
Budujemy gry w Unity dla sportu w jeden weekend.
Programowanie gier na czas to dla nas wyzwanie i robimy to co roku.
)

ggj.title = 'Programowanie gier w 48 godzin - Global Game Jam'

ggj.save

ggj.update(logo: ggj_logo, logotype: ggj_logo)
