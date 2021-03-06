# nopaperwork
nopaperwork = Project.where(slug: 'nopaperwork.org').first_or_initialize
nopaperwork.assign_attributes(
  display: true,
  dofollow: true,
  title: 'nopaperwork',
  url: 'https://nopaperwork.org/',
  year: 2019
)

I18n.locale = :en
nopaperwork.description = %()
nopaperwork.introduction = %(
Management business with no paperwork.
Customer service, create invoices, order management.
All in one place, easy-to-use and painless.
Available API in standard JSON API.
)
nopaperwork.subtitle = 'business management application'

I18n.locale = :pl
nopaperwork.description = %()
nopaperwork.introduction = %(
Zarządzanie małą firmą bez zbędnych formalności.
Obsługa klientów, tworzenie faktur, zarządzanie zamówieniami.
Wszystko w jednym miejscu, łatwe w obsłudze i bezbolesne.
Dostępne API w standardzie JSON API.
)
nopaperwork.subtitle = 'aplikacja do zarządzania firmą'

nopaperwork.save

# Purpura
purpura = Project.where(slug: 'purpura.eu').first_or_initialize
purpura.assign_attributes(
  display: true,
  dofollow: false,
  title: 'Purpura',
  url: 'http://purpura.eu',
  year: 2017
)

I18n.locale = :en
purpura.subtitle = 'design handcrafted tiles application'
purpura.introduction = %(
Application supporting design hand-made ceramic tiles.
Users can choose the shapes, patterns and colors.
Ordering process is a multi-step and requires an individual valuation, because the tiles are manufactured by hand.
)
purpura.description = %()

I18n.locale = :pl
purpura.description = %()
purpura.introduction = %(
Aplikacja wspomagająca projektowanie ręcznie wykonywanych kafli ceramicznych.
Użytkownicy mogą dobierać kształty, wzory i kolory.
Proces zamawiania jest wieloetapowy i wymaga indywidualnej wyceny, ponieważ płytki są wyrabiane ręcznie.
)
purpura.subtitle = 'aplikacja do projektowania płytek'

purpura.save

# Fractal Soft
fractalsoft = Project.where(slug: 'fractalsoft.org').first_or_initialize
fractalsoft.assign_attributes(
  display: false,
  dofollow: true,
  title: 'Website Fractal Soft',
  url: 'https://fractalsoft.org',
  year: 2018
)

I18n.locale = :en
fractalsoft.description = %()
fractalsoft.introduction = %(
This is our company website.
It shouldn't be complicated.
The task of this site is to show what and how we do.
We work on it in our free time.
The project is Open Source.
)
fractalsoft.subtitle = 'software house'

I18n.locale = :pl
fractalsoft.description = %()
fractalsoft.introduction = %(
To nasza strona firmy.
Nie ma być skomplikowana.
Zadaniem tej strony jest pokazanie co i jak robimy.
Pracujemy nad nią w wolnym czasie.
Projekt jest Open Source.
)
fractalsoft.subtitle = 'firma programistyczna'

fractalsoft.save

# blog.fractalsoft.org
blog = Project.where(slug: 'blog.fractalsoft.org').first_or_initialize
blog.assign_attributes(
  display: false,
  dofollow: true,
  title: 'Blog Fractal Soft',
  url: 'https://blog.fractalsoft.org',
  year: 2018
)

I18n.locale = :en
blog.description = %()
blog.introduction = %()
blog.subtitle = 'technical blog'

I18n.locale = :pl
blog.description = %()
blog.introduction = %()
blog.subtitle = 'blog techniczny'

blog.save

# AgriCircle
agricircle = Project.where(slug: 'agricircle.com').first_or_initialize
agricircle.assign_attributes(
  display: true,
  dofollow: false,
  title: 'AgriCircle',
  year: 2019
)

I18n.locale = :en
agricircle.description = %()
agricircle.introduction = %(
Web application to make better planning process for farmers.
Geo map service, communication with external services, import / export fields, organizer for irrigation, fertilizing, planting and harvesting crops.
)
agricircle.subtitle = 'crop management application'

I18n.locale = :pl
agricircle.description = %()
agricircle.introduction = %(
Aplikacja internetowa usprawniająca proces planowania dla rolników.
Obsługa map, komunikacja z zewnętrznymi serwisami, import / eksport pól, organizer nawadniania, użyźniania, sadzenia i zbierania upraw.
)
agricircle.subtitle = 'aplikacja do zarządzania uprawami'

agricircle.save

# SelectHub
selecthub = Project.where(slug: 'selecthub.com').first_or_initialize
selecthub.assign_attributes(
  display: true,
  dofollow: false,
  title: 'SelectHub',
  url: 'https://www.selecthub.com/',
  year: 2016
)

I18n.locale = :en
selecthub.description = %()
selecthub.introduction = %(
Platform for business to evaluate and acquire the software products.
It allows comparison of different IT solutions depending on customer needs.
Software vendors give access to the database of leads.
)
selecthub.subtitle = %()

I18n.locale = :pl
selecthub.description = %()
selecthub.introduction = %(
Platforma dla firm do oceniania i nabywania oprogramowania.
Umożliwia porównanie różnych rozwiązań IT w zależności od potrzeb klienta.
Producentom oprogramowania daje dostęp do bazy potencjalnych klientów.
)
selecthub.subtitle = %()

selecthub.save

# Hitdea
hitdea = Project.where(slug: 'hitdea.com').first_or_initialize
hitdea.assign_attributes(
  display: true,
  dofollow: false,
  title: 'hitdea',
  year: 2015
)

I18n.locale = :en
hitdea.description = %()
hitdea.introduction = %(
Collaborative web-based platform for idea management.
It allows to empower people to gather ideas but also process them in a creative, productive and simple way.
Based on the methodology CPS 6.1 (Creative Problem Solving).
)
hitdea.subtitle = 'based on microservices'

I18n.locale = :pl
hitdea.description = %()
hitdea.introduction = %(
Platforma internetowa do zarządzania pomysłami.
Umożliwia użytkownikom zbierać pomysły oraz przetwarzać je w kreatywny, wydajny i prosty sposób.
Bazuje na metodologii CPS 6.1 (Creative Problem Solving).
)
hitdea.subtitle = "aplikacja oparta o&nbsp;mikroserwisy"

hitdea.save

# marketing.hitdea.com
marketing_hitdea = Project.where(slug: 'ads-system').first_or_initialize
marketing_hitdea.assign_attributes(
  display: true,
  dofollow: false,
  title: 'advertising app',
  url: 'marketing.hitdea.com',
  year: 2014
)

I18n.locale = :en
marketing_hitdea.description = %()
marketing_hitdea.introduction = %(
Contextual advertising management.
It uses API of linguistic analysis application and allows to define target group.
)
marketing_hitdea.subtitle = ''

I18n.locale = :pl
marketing_hitdea.description = %()
marketing_hitdea.introduction = %(
Aplikacja do zarządzania reklamą kontekstową.
Wykorzystuje API aplikacji do analizy językowej oraz umożliwia określić grupę docelową.
)
marketing_hitdea.subtitle = ''

marketing_hitdea.save

# analysis.hitdea.com
analysis_hitdea = Project.where(slug: 'linguistic-analysis').first_or_initialize
analysis_hitdea.assign_attributes(
  display: true,
  dofollow: false,
  title: 'linguistic analysis',
  url: 'analysis.hitdea.com',
  year: 2014
)

I18n.locale = :en
analysis_hitdea.description = %()
analysis_hitdea.introduction = %(
Linguistic analysis system is used for word processing and automatic category detection.
The application can also detect the language of the text.
The database contains over 6 million words in Polish and English.
The system has a learning mode with a teacher and the categorization is based on statistical methods.
Application provides an external API.
)
analysis_hitdea.subtitle = ''

I18n.locale = :pl
analysis_hitdea.description = %()
analysis_hitdea.introduction = %(
System analizy językowej służy do przetwarzania tekstów i automatycznego wykrycia kategorii.
Aplikacja umożliwia również wykrywanie języka tekstu.
Baza zawiera ponad 6 milionów słów w&nbsp;języku polskim i angielskim.
System umożliwia włączenie trybu nauki z nauczycielem, a&nbsp;kategoryzacja oparta jest o metody statystyczne.
Aplikacja udostępnia API zewnętrzne.
)
analysis_hitdea.subtitle = ''

analysis_hitdea.save

# game.hitdea.com
game_hitdea = Project.where(slug: 'wordmaker').first_or_initialize
game_hitdea.assign_attributes(
  display: true,
  dofollow: false,
  title: 'wordmaker',
  url: 'game.hitdea.com',
  year: 2014
)

I18n.locale = :en
game_hitdea.description = %()
game_hitdea.introduction = %(
Game of words based on English and Polish languages.
Create as many different words as possible from randomly selected letters.
Word verification is based on the external API linguistic analysis.
)
game_hitdea.subtitle = ''

I18n.locale = :pl
game_hitdea.description = %()
game_hitdea.introduction = %(
Gra w słowa oparta o język angielski i polski.
Stworzenie jak najwięcej różnych słów z losowo wybranych liter.
Weryfikacja słowa wykorzytuje zewnętrzne API systemu analizy językowej.
)
game_hitdea.subtitle = ''

game_hitdea.save

# questions.hitdea.com
questions_hitdea = Project.where(slug: '20-questions-game').first_or_initialize
questions_hitdea.assign_attributes(
  display: true,
  dofollow: false,
  title: '20 questions game',
  url: 'questions.hitdea.com',
  year: 2014
)

I18n.locale = :en
questions_hitdea.description = %()
questions_hitdea.introduction = %(
Logic game which learns with every play.
In the game you have to answer questions asked by the AI and it will try to guess what were you thinking about.
)
questions_hitdea.subtitle = ''

I18n.locale = :pl
questions_hitdea.description = %()
questions_hitdea.introduction = %(
Gra logiczna ucząca się z każdą następną rundą gry.
Należy w niej odpowiadać na pytania zadawane przez SI (Sztuczną Inteligencję) a aplikacja spróbuje odganąć o czym myślałeś.
)
questions_hitdea.subtitle = ''

questions_hitdea.save
