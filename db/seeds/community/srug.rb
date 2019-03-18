srug = Community.where(slug: 'srug').first_or_create
srug_logo = File.new('db/seeds/community/srug/srug-logo.png')

srug.update(
  position: 2,
  published: true,
  name: 'SRUG',
  title_en: 'Silesian Ruby Users Group - we share knowledge with other programmers - SRUG',
  title_pl: 'Śląska Grupa Użytkowników Języka Ruby - dzielimy się wiedzą z innymi - SRUG',
  meta_description_en: %(
We share knowledge with other programmers.
We show technical presentations about Ruby and not only.
We are building a Ruby community.
),
  meta_description_pl: %(
Dzielimy się wiedzą z innymi programistami.
Pokazujemy prezentacje techniczne o języku Ruby i nie tylko.
Budujemy społeczność Rubiego.
),
  introduction_en: %(
SRUG is a local group of **Ruby language** programmers mostly operating
in _Gliwice_, but also in whole _Silesian_ region.
We active participate in all Ruby meetings with pleasure .
We feel as a part of this Ruby community and we support these great events.

We often prepare presentations and share our knowledge and experience.
We try to make our presentations to raise various important topics, such as
newness features in Ruby language, functional programming, mobile application,
good quality and refactoring of code, SEO and web crawlers.
),
  introduction_pl: %(
SRUG to lokalna grupa programistów **języka Ruby** działająca głównie
w _Gliwicach_, ale również na całym _Śląsku_.
Z przyjemnością aktywnie uczestniczymy we wszystkich spotkaniach Ruby.
Czujemy się częścią tej społeczności Ruby i wspieramy te świetne wydarzenia.

Często przygotowujemy prezentacje i dzielimy się naszą wiedzą i doświadczeniem.
Staramy się aby nasze prezentacje poruszały różne ważne tematy tj.
nowości w języku Ruby, programowanie funkcyjne, aplikacje mobilne,
dobra jakość i refaktoryzacja kodu, pozycjonowanie i roboty sieciowe.
),
  description_en: %(
The titles of the presentation that we presented at SRUG meetings:

- Are you an Egoistic Programmer? Take Care of your Code - Refactoring Ideas
- Good Quality of a Project - SEO Onsite
- Don't git blame me
- Why do I like Ruby
- How to Tame Robots
- Ruby Functional Programming
- Ruboto - introduction
- Introduction to SVG
),
  description_pl: %(
Tytuły prezentacji, które przedstawialiśmy na spotkaniach SRUG:

- Czy jesteś programistą egoistą? Dbaj o swój kod - Pomysły na refaktoryzację
- Dobra jakość projektu - SEO Onsite
- Don't git blame me
- Dlaczego lubię język Ruby?
- Jak oswoić roboty sieciowe?
- Programowanie funkcyjne w Ruby
- Ruboto - wprowadzenie
- Wprowadzenie do SVG
)
)
srug.update(logo: srug_logo, logotype: srug_logo)
