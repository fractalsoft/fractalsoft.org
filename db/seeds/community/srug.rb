# SRUG
srug = Community.where(slug: 'srug').first_or_create
srug_logo = File.new('db/seeds/community/srug/srug-logo.png')
srug.assign_attributes(
  position: 2,
  published: true,
  name: 'SRUG'
)

I18n.locale = :en

srug.description = <<~DESCRIPTION.chomp
  SRUG is a local group of **Ruby language** programmers mostly operating in Gliwice, but also in whole _Silesian_ region.
  We active participate in all Ruby meetings with pleasure.
  We feel as a part of this Ruby community and we support these great events.

  We often prepare presentations and share our knowledge and experience.
  We try to make our presentations to raise various important topics, such as newness features in Ruby language,
  functional programming, mobile application, good quality and refactoring of code, SEO and web crawlers.

  The titles of the presentation that we presented at SRUG meetings:

  - Are you an Egoistic Programmer? Take Care of your Code - Refactoring Ideas
  - Good Quality of a Project - SEO Onsite
  - Don't git blame me
  - How to deal with flaky tests?
  - How to focus?
  - How to Tame Robots
  - Introduction to SVG
  - Occupational Burnout Syndrome - How to still feel passion, even after years of programming?
  - Pattern Matching in Ruby
  - Ruby Functional Programming
  - Ruboto - introduction
  - Ruby map(&:method) syntax
  - Why do I like Ruby
  - Zero downtime migrations in Rails
DESCRIPTION

srug.introduction = <<~INTRODUCTION.chomp
  SRUG is a local group of **Ruby language** programmers mostly operating
  in _Gliwice_, but also in whole _Silesian_ region.
  We active participate in all Ruby meetings with pleasure .
  We feel as a part of this Ruby community and we support these great events.

  We often prepare presentations and share our knowledge and experience.
  We try to make our presentations to raise various important topics, such as
  newness features in Ruby language, functional programming, mobile application,
  good quality and refactoring of code, SEO and web crawlers.
INTRODUCTION

srug.meta_description = <<~META_DESCRIPTION.chomp.tr("\n", ' ')
  We share knowledge with other programmers.
  We show technical presentations about Ruby and not only.
  We are building a Ruby community.
META_DESCRIPTION

# srug.title = 'Silesian Ruby Users Group - we share knowledge with other programmers - SRUG'
srug.title = "Silesian Ruby Users Group | SRUG - let's share Ruby knowledge"

I18n.locale = :pl

srug.description = <<~DESCRIPTION.chomp
  ## Czym jest **SRUG**?

  SRUG to lokalna grupa programistów **języka Ruby** działająca głównie
  w _Gliwicach_, ale również na całym _Śląsku_.
  Nazwa SRUG to skrót od Silesian Ruby Users Group,
  czyli w dosłowym tłumaczeniu **Śląska Grupa Użytkowników języka Ruby**.
  Zamiennie można używać też mniej dokładnych tłumaczeń _Śląska Grupa Miłośników Ruby_ lub _Śląska Grupa Rubiego_.
  Istotne jest, że rozwinięcie nazwy SRUG składa się ze słowa Ruby, jako języka programowania
  oraz z rejonu działania grupy, w tym wypadku w Silesii, czyli na Śląsku.


  ## Krótka historia SRUG-a

  Pierwsze spotkania SRUG odbywały się na Politechnice Śląskiej w Gliwicach już od roku 2009.
  Z czasem programistów Ruby w Gliwicach przybywało.
  SRUG dojrzał i wyjrzał poza mury uczelni.
  Społeczność Ruby zaczęła spotykać się w różnych miejscach w Gliwicach.
  Najpierw na Nowych Gliwicach, potem w Starych Browarze oraz w klubie muzycznym 4art.
  Następnie przyszedł czas na SRUG-i wyjazdowe.
  Każde kolejne spotkanie miłośników Ruby na Śląsku odbywało się w innym mieście
  (Gliwice, Bielsko-Biała, Żywiec, Pszczyna, Katowice).
  Przez pewien czas Śląska Grupa Użytkowników Języka Ruby spotykała się w Hackerspace w Katowicach.
  Finalnie jednak SRUG powrócił do Gliwic i regularne meetupy odbywają się w Dobry Zbeerze.


  ## Nasi programiści uwielbiają SRUG-i ❤️

  Z przyjemnością aktywnie uczestniczymy we wszystkich spotkaniach Ruby na Śląsku.
  Czujemy się częścią tej społeczności Ruby i wspieramy te świetne wydarzenia.
  Zachęcamy również innych programistów do aktywnego uczestnictwa we SRUG-ach.
  Nie ma znaczenia, że na co dzień ktoś pracuje w innych technologiach, uczestnictwo w SRUG-u przynosi same korzyści.
  Każde spotkanie SRUG jest wyjątkowe i zbalansowane.
  Oznacza to, że zarówno początkujący programista-pasjonat jak i doświadczony Ruby developer znajdzie coś dla siebie.
  Po prostu uczymy się od siebie nawzajem.
  A do tego meetupy SRUG są darmowe.


  ### Nasze prezentacje

  Często przygotowujemy prezentacje i dzielimy się naszą wiedzą i doświadczeniem.
  Staramy się aby nasze prezentacje poruszały różne ważne tematy tj.
  nowości w języku Ruby, dopasowanie do wzorca, programowanie funkcyjne, aplikacje mobilne,
  dobra jakość i refaktoryzacja kodu, pozycjonowanie i roboty sieciowe.

  Tytuły prezentacji, które przedstawialiśmy na spotkaniach SRUG:

  - Czy jesteś programistą egoistą? Dbaj o swój kod - Pomysły na refaktoryzację
  - Dlaczego lubię język Ruby?
  - Dobra jakość projektu - SEO Onsite
  - Don't git blame me
  - Dopasowanie do wzorca w Ruby
  - Jak oswoić roboty sieciowe?
  - Jak radzić sobie z niestabilnymi testami?
  - Pattern Matching w Ruby
  - Programowanie funkcyjne w Ruby
  - Ruboto - wprowadzenie
  - Ruby map(&:method) składnia
  - Syndrom wypalenia zawodowego - Jak nadal czuć pasję, nawet po latach programowania?
  - Wprowadzenie do SVG
  - Zero przestojów w migracjach w Ruby on Rails


  ## Język Ruby a społeczność lokalna

  Społeczność języka Ruby na Śląsku działa podobnie jak inne lokalne grupy rubiego w Polsce.
  Wbrew pozorom popularność języka Ruby oraz społeczność, która się wokół niego wytworzyła nie jest wcale taka mała.
  W Polsce działa kilka lokalnych grup Ruby i stale powstają nowe.
  Oto kilka polskich społeczności języka Ruby:

  - BRUG - Białystok Ruby User Group
  - DRUG - Dolnośląska Grupa Użytkowników Ruby
  - KRUG - Kraków Ruby User Group
  - LRUG - Łódź Ruby User Group
  - PRUG - Poznań Ruby User Group
  - RzRUG - Rzeszów Ruby User Group
  - SzRUG - Szczecin Ruby User Group
  - TRUG - Trójmiejska Grupa Użytkowników Ruby
  - WRUG - Warsaw Ruby User Group

DESCRIPTION

srug.introduction = <<~INTRODUCTION.chomp
  > _Myśl globalnie, działaj lokalnie._ - René Dubos

  To motto ekologów, ale sprawdza się również w branżach technologicznych.

  DRUG, KRUG, LRUG, PRUG, SRUG, TRUG, WRUG, itd. to lokalne grupy programistów Ruby rozsiane po w całej Polsce.
  **SRUG**, czyli Silesian Ruby User Group jest najbliższa naszemu sercu.
  To właśnie na _Śląsku_ jesteśmy najczęściej na spotkaniach rubiowców.

  Zachęcamy do zapoznania się z tym co robimy na SRUG-ach i jak współtworzymy gliwicką społeczność Ruby.
INTRODUCTION

srug.meta_description = <<~META_DESCRIPTION.chomp.tr("\n", ' ')
  Dzielimy się wiedzą z innymi programistami.
  Pokazujemy prezentacje techniczne o języku Ruby i nie tylko.
  Budujemy społeczność Rubiego na Śląsku.
META_DESCRIPTION

srug.title = 'Śląska Grupa Użytkowników Języka Ruby - dzielimy się wiedzą o Ruby'

srug.save

srug.update(logo: srug_logo, logotype: srug_logo)
