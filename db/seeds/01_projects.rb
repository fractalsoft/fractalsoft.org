# nopaperwork
nopaperwork = Project.where(slug: 'nopaperwork.org').first_or_initialize
nopaperwork.assign_attributes(
  title: 'nopaperwork',
  display: true,
  dofollow: true,
  subtitle_en: 'business management application',
  subtitle_pl: 'aplikacja do zarządzania firmą',
  url: 'nopaperwork.org',
  introduction_en: %(
Management business with no paperwork.
Customer service, create invoices, order management.
All in one place, easy-to-use and painless.
Available API in standard JSON API.
),
  introduction_pl: %(
Zarządzanie małą firmą bez zbędnych formalności.
Obsługa klientów, tworzenie faktur, zarządzanie zamówieniami.
Wszystko w jednym miejscu, łatwe w obsłudze i bezbolesne.
Dostępne API w standardzie JSON API.
),
  description_en: %(),
  description_pl: %(),
  year: 2018
)
nopaperwork.save

# Purpura
purpura = Project.where(slug: 'purpura.eu').first_or_initialize
purpura.assign_attributes(
  title: 'Purpura',
  display: true,
  dofollow: false,
  subtitle_en: 'design handcrafted tiles application',
  subtitle_pl: 'aplikacja do projektowania płytek',
  url: 'purpura.eu',
  introduction_en: %(
Application supporting design hand-made ceramic tiles.
Users can choose the shapes, patterns and colors.
Ordering process is a multi-step and requires an individual valuation, because the tiles are manufactured by hand.
),
  introduction_pl: %(
Aplikacja wspomagająca projektowanie ręcznie wykonywanych kafli ceramicznych.
Użytkownicy mogą dobierać kształty, wzory i kolory.
Proces zamawiania jest wieloetapowy i wymaga indywidualnej wyceny, ponieważ płytki są wyrabiane ręcznie.
),
  description_en: %(),
  description_pl: %(),
  year: 2017
)
purpura.save

# Fractal Soft
fractalsoft = Project.where(slug: 'fractalsoft.org').first_or_initialize
fractalsoft.assign_attributes(
  title: 'Website Fractal Soft',
  display: false,
  dofollow: true,
  subtitle_en: 'software house',
  subtitle_pl: 'firma programistyczna',
  url: 'https://fractalsoft.org',
  introduction_en: %(
This is our company website.
It shouldn't be complicated.
The task of this site is to show what and how we do.
We work on it in our free time.
The project is Open Source.
),
  introduction_pl: %(
To nasza strona firmy.
Nie ma być skomplikowana.
Zadaniem tej strony jest pokazanie co i jak robimy.
Pracujemy nad nią w wolnym czasie.
Projekt jest Open Source.
),
  description_en: %(),
  description_pl: %(),
  year: 2018
)
fractalsoft.save

# blog.fractalsoft.org
blog = Project.where(slug: 'blog.fractalsoft.org').first_or_initialize
blog.assign_attributes(
  title: 'Blog Fractal Soft',
  display: false,
  dofollow: true,
  subtitle_en: 'technical blog',
  subtitle_pl: 'blog techniczny',
  url: 'https://blog.fractalsoft.org',
  introduction_en: %(),
  introduction_pl: %(),
  description_en: %(),
  description_pl: %(),
  year: 2018
)
blog.save

# AgriCircle
agricircle = Project.where(slug: 'agricircle.com').first_or_initialize
agricircle.assign_attributes(
  title: 'AgriCircle',
  display: false,
  dofollow: false,
  subtitle_en: 'crop management application',
  subtitle_pl: 'aplikacja do zarządzania uprawami',
  introduction_en: %(
Web application to make better planning process for farmers.
Geo map service, communication with external services, import / export fields, organizer for irrigation, fertilizing, planting and harvesting crops.
),
  introduction_pl: %(
Aplikacja internetowa usprawniająca proces planowania dla rolników.
Obsługa map, komunikacja z zewnętrznymi serwisami, import / eksport pól, organizer nawadniania, użyźniania, sadzenia i zbierania upraw.
),
  description_en: %(),
  description_pl: %(),
  year: 2018
)
agricircle.save

# SelectHub
selecthub = Project.where(slug: 'selecthub.com').first_or_initialize
selecthub.assign_attributes(
  title: 'SelectHub',
  display: true,
  dofollow: false,
  subtitle_en: %(),
  subtitle_pl: %(),
  url: 'selecthub.com',
  introduction_en: %(
Platform for business to evaluate and acquire the software products.
It allows comparison of different IT solutions depending on customer needs.
Software vendors give access to the database of leads.
),
  introduction_pl: %(
Platforma dla firm do oceniania i nabywania oprogramowania.
Umożliwia porównanie różnych rozwiązań IT w zależności od potrzeb klienta.
Producentom oprogramowania daje dostęp do bazy potencjalnych klientów.
),
  description_en: %(),
  description_pl: %(),
  year: 2016
)
selecthub.save

# Hitdea
hitdea = Project.where(slug: 'hitdea.com').first_or_initialize
hitdea.assign_attributes(
  title: 'hitdea',
  display: true,
  dofollow: false,
  subtitle_en: 'based on microservices',
  subtitle_pl: "aplikacja oparta o&nbsp;mikroserwisy",
  url: 'hitdea.com',
  introduction_en: %(
Collaborative web-based platform for idea management.
It allows to empower people to gather ideas but also process them in a creative, productive and simple way.
Based on the methodology CPS 6.1 (Creative Problem Solving).
),
  introduction_pl: %(
Platforma internetowa do zarządzania pomysłami.
Umożliwia użytkownikom zbierać pomysły oraz przetwarzać je w kreatywny, wydajny i prosty sposób.
Bazuje na metodologii CPS 6.1 (Creative Problem Solving).
),
  description_en: %(),
  description_pl: %(),
  year: 2015
)
hitdea.save

# marketing.hitdea.com
marketing_hitdea = Project.where(slug: 'ads-system').first_or_initialize
marketing_hitdea.assign_attributes(
  title: 'advertising app',
  display: true,
  dofollow: false,
  url: 'marketing.hitdea.com',
  introduction_en: %(
Contextual advertising management.
It uses API of linguistic analysis application and allows to define target group.
),
  introduction_pl: %(
Aplikacja do zarządzania reklamą kontekstową.
Wykorzystuje API aplikacji do analizy językowej oraz umożliwia określić grupę docelową.
),
  year: 2014
)
marketing_hitdea.save

# analysis.hitdea.com
analysis_hitdea = Project.where(slug: 'linguistic-analysis').first_or_initialize
analysis_hitdea.assign_attributes(
  title: 'linguistic analysis',
  display: true,
  dofollow: false,
  url: 'analysis.hitdea.com',
  introduction_en: %(
Linguistic analysis system is used for word processing and automatic category detection.
The application can also detect the language of the text.
The database contains over 6 million words in Polish and English.
The system has a learning mode with a teacher and the categorization is based on statistical methods.
Application provides an external API.
),
  introduction_pl: %(
System analizy językowej służy do przetwarzania tekstów i automatycznego wykrycia kategorii.
Aplikacja umożliwia również wykrywanie języka tekstu.
Baza zawiera ponad 6 milionów słów w&nbsp;języku polskim i angielskim.
System umożliwia włączenie trybu nauki z nauczycielem, a&nbsp;kategoryzacja oparta jest o metody statystyczne.
Aplikacja udostępnia API zewnętrzne.
),
  year: 2014
)
analysis_hitdea.save

# game.hitdea.com
game_hitdea = Project.where(slug: 'wordmaker').first_or_initialize
game_hitdea.assign_attributes(
  title: 'wordmaker',
  display: true,
  dofollow: false,
  url: 'game.hitdea.com',
  introduction_en: %(
Game of words based on English and Polish languages.
Create as many different words as possible from randomly selected letters.
Word verification is based on the external API linguistic analysis.
),
  introduction_pl: %(
Gra w słowa oparta o język angielski i polski.
Stworzenie jak najwięcej różnych słów z losowo wybranych liter.
Weryfikacja słowa wykorzytuje zewnętrzne API systemu analizy językowej.
),
  year: 2014
)
game_hitdea.save

# questions.hitdea.com
questions_hitdea = Project.where(slug: '20-questions-game').first_or_initialize
questions_hitdea.assign_attributes(
  title: '20 questions game',
  display: true,
  dofollow: false,
  url: 'questions.hitdea.com',
  introduction_en: %(
Logic game which learns with every play.
In the game you have to answer questions asked by the AI and it will try to guess what were you thinking about.
),
  introduction_pl: %(
Gra logiczna ucząca się z każdą następną rundą gry.
Należy w niej odpowiadać na pytania zadawane przez SI (Sztuczną Inteligencję) a aplikacja spróbuje odganąć o czym myślałeś.
),
  year: 2014
)
questions_hitdea.save
