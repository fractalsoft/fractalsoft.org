# Rails Girls
rails_girls = Community.where(slug: 'rails-girls').first_or_create

rails_girls_vimeo_silesia_url = 'https://player.vimeo.com/video/114024898'
rails_girls_vimeo_cieszyn_url = 'https://player.vimeo.com/video/189199542'

rails_girls_vimeo_silesia = vimeo_iframe(rails_girls_vimeo_silesia_url)
rails_girls_vimeo_cieszyn = vimeo_iframe(rails_girls_vimeo_cieszyn_url)

rails_girls_logotype = File.new('db/seeds/community/railsgirls/railsgirls-logotype.png')
rails_girls_logo = File.new('db/seeds/community/railsgirls/railsgirls-logo.png')

rails_girls.assign_attributes(
  position: 1,
  published: true,
  name: 'Rails Girls'
)

I18n.locale = :en
rails_girls.description = %(
In October 2014 in _Gliwice_, we organized the first workshops
Rails Girls in Silesia.
30 women from all over Poland took part in it.
10 coaches were teaching, including 7 female programmers.
A lot of local and international companies were involved in this event.

#{rails_girls_vimeo_silesia}


In October 2016 in _Cieszyn_ we organized the second
Rails Girls workshops in Silesia.
More precisely in Silesian Cieszyn.
The idea of these workshops was to learn programming without any borders.
This event had an international character and was held in Cieszyn,
a city divided between two countries - Poland and the Czech Republic.
That was the first Rails Girls workshops fully cross-border in Poland.
This time, the workshop had 24 participants,
including 5 women from the Czech Republic.
Among 10 coaches there were 4 female programmers.
Six people from Poland and four people from the Czech Republic
were involved in teaching of programming.

#{rails_girls_vimeo_cieszyn}


In addition to organizing Rails Girls workshops, we are happy to help other
local groups.
We've been to many cities in Poland, where we taught programming women.

A short list of Rails Girls events in which we were coaches:

- Rails Girls Warsaw 2014
- Rails Girls Poznań 2014
- Rails Girls Szczecin 2014
- Rails Girls Łódź 2014
- Rails Girls Youth Kraków 2014
- Rails Girls Wrocław 2014
- Rails Girls Youth Szczecin 2014
- Rails Girls Warsaw 2015
- Rails Girls Łódź 2015
- Rails Girls Szczecin 2015
- Rails Girls Warsaw 2016
- Rails Girls Poznań 2016
- Rails Girls Szczecin 2016
- Rails Girls Łódź 2016
- Rails Girls Szczecin 2017
- Rails Girls Gorzów 2017
- Rails Girls Poznań 2018
)
rails_girls.introduction = %(
We organize and sponsor **Rails Girls Silesia** workshops.
We act as Rails Girls coaches in differents cities of Poland.
Everyone can learn programming, we strongly believe in that statement.
As programmers professionally connected with web technologies,
working in Ruby on Rails framework,
the idea of Rails Girls is particularly close to us.

By organizing workshops, we try to create convenient conditions for learning
programming for the participants of Rails Girls workshops.
Many of women who we had the opportunity to teach have broadened their interests
or even changed their lives.
)
rails_girls.meta_description = %(
We teach women`s programming and organize Ruby on Rails workshops.
We help women enter the IT world.
)
rails_girls.title = 'Learning programming for women - Rails Girls'


I18n.locale = :pl
rails_girls.description = %(
W październiku 2014 roku w _Gliwicach_ zorganizowaliśmy pierwsze warsztaty
Rails Girls na Śląsku.
Uczestniczyło w nim 30 kobiet z całej Polski.
Programowania nauczało 10 coachy, w tym 7 kobiet programistki.
W to wydarzenie zaangażowało się wiele lokalnych jak i międzynarodowych firm.

#{rails_girls_vimeo_silesia}


W październiku 2016 roku w _Cieszynie_ zorganizowaliśmy drugie warsztaty
Rails Girls na Śląsku.
Dokładniej to na Śląsku Cieszyńskim.
Ideą tych warsztatów była nauka programowania bez granic.
To wydarzenie miało międzynarodowy charakter i odbyło się w Cieszynie,
mieście podzielonym pomiędzy dwa kraje - Polskę i Czechy.
Były to pierwsze w Polsce warsztaty Rails Girls w pełni transgraniczne.
Tym razem uczestniczek warsztatów było 24,
w tym 5 kobiet z Republiki Czeskiej.
Wśród 10 coachy były 4 kobiety programistki.
W naukę programowania zaangażowało się 6 osób z Polski i 4 osoby z Czech.

#{rails_girls_vimeo_cieszyn}


Oprócz organizowania warsztatów Rails Girls z przyjemnością pomagamy innym
lokalnym grupom.
Byliśmy już w wielu miastach w Polsce, gdzie uczyliśmy kobiety programowania.

Krótka lista wydarzeń Rails Girls w których byliśmy coachami:

- Rails Girls Warsaw 2014
- Rails Girls Poznań 2014
- Rails Girls Szczecin 2014
- Rails Girls Łódź 2014
- Rails Girls Youth Kraków 2014
- Rails Girls Wrocław 2014
- Rails Girls Youth Szczecin 2014
- Rails Girls Warsaw 2015
- Rails Girls Łódź 2015
- Rails Girls Szczecin 2015
- Rails Girls Warsaw 2016
- Rails Girls Poznań 2016
- Rails Girls Szczecin 2016
- Rails Girls Łódź 2016
- Rails Girls Szczecin 2017
- Rails Girls Gorzów 2017
- Rails Girls Poznań 2018
)
rails_girls.introduction = %(
Organizujemy i sponsorujemy warsztaty **Rails Girls na Śląsku**.
Działamy jako coachowie Rails Girls w różnych miastach w Polsce.
Głęboko wierzymy w to, że każdy może nauczyć się programowania.
Jako programiści powiązani zawodowo z technologiami webowymi,
pracujący we frameworku Ruby on Rails,
idea Rails Girls jest nam szczególnie bliska.

Organizując warsztaty staramy się stworzyć dogodne warunki do nauki
programowania dla uczestniczek warsztatów Rails Girls.
Wiele z kobiet, które mieliśmy okazję uczyć poszerzyło swoje zainteresowania
lub nawet zmieniło swoje życie.
)
rails_girls.meta_description = %(
Uczymy programowania kobiety i organizujemy warsztaty z Ruby on Rails.
Pomagamy wejść kobietom do świata IT.
)
rails_girls.title = 'Nauka programowania dla kobiet - Rails Girls'

rails_girls.save

rails_girls.update(logo: rails_girls_logo, logotype: rails_girls_logotype)
