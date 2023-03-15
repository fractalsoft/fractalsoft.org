# Fullstack developer
job_offer = JobOffer.where(slug: 'fullstack-developer').first_or_create

job_offer.attributes = {
  position: 1,
  published: false
}

# <a href='slug' title='title'>name</a>

job_offer.attributes = {
  locale: :en,
  brief: %(Ruby on Rails and JavaScript Developer),
  headline: 'Fullstack Developer',
  meta_description: 'Job offer for Ruby on Rails and JavaScript Developer',
  meta_title: 'Ruby on Rails and JavaScript Developer',
  name: 'Fullstack Developer',
  title: 'Ruby on Rails and JavaScript Developer'
}

job_offer.attributes = {
  locale: :pl,
  brief: %(Programista Ruby on Rails i JavaScript),
  headline: 'Programista / Programistka',
  meta_description: 'Oferta pracy dla programisty / programistki Ruby on Rails i JavaScript',
  meta_title: 'Programista / Programistka Ruby on Rails i JavaScript',
  name: 'Programista',
  title: 'Programista Ruby on Rails i JavaScript'
}

job_offer.attributes = {
  locale: :en,
  introduction: %(
Work with us as a fullstack developer.
)
}

job_offer.attributes = {
  locale: :pl,
  introduction: %(
Pracuj z nami jako programista / programistka.
)
}

job_offer.attributes = {
  locale: :en,
  description: <<~DESCRIPTION.chomp
    Would you like to work with us?
    We are very happy about it.

    It is difficult to objectively (numerically or descriptively) determine the level of knowledge of various technologies.
    Therefore, please consider whether you want to and able to work it the technologies we use.

    ## Technologies we use

    1.  **HTML** & **CSS**
        <br>
        Knowledge of HTML and CSS is fundamental to our work.
        <br>
        [technology:html5]
        [technology:css3]

    2.  **JavaScript**
        <br>
        We want web applications to be dynamic and interactive.
        That is why we use JavaScript.
        <br>
        [technology:javascript]

    3.  **TypeScript** or **CoffeeScript**
        <br>
        We often use technologies that make programming easier.
        To write better JavaScript code, we use TypeScript or CoffeeScript.
        <br>
        [technology:typescript]
        [technology:coffeescript]

    4.  **Haml** lub **Slim**
        <br>
        We use Haml or Slim as an alternative to pure HTML.
        <br>
        [technology:haml]

    5.  **Sass** lub **Less**
        <br>
        For more efficient work with CSS, we use Sass / Scss or Less.
        <br>
        [technology:sass]
        [technology:less]

    6.  **Git**
        <br>
        We use Git to manage code changes easily and conveniently.
        If you are already familiar with another version control system, you will quickly learn how to use Git.
        <br>
        [technology:git]

    7.  **Ruby**
        <br>
        Ruby is one of our favorites among many programming languages.
        <br>
        [technology:ruby]

    8.  **Ruby on Rails**
        <br>
        We use Ruby on Rails as our main server-side framework.
        <br>
        [technology:ruby-on-rails]

    9.  **Rspec** lub **Minitest**
        <br>
        We care about the correct behavior of our code.
        That's why we write tests in Rspec or minitest.
        <br>
        [technology:rspec]

    10. **PostgreSQL**, **MySQL**, **Redis**
        <br>
        We use different databases depending on the project.
        We mostly use PostgreSQL, but we've also used MySQL and Redis.
        <br>
        [technology:postgresql]
        [technology:mysql]
        [technology:redis]

    11. **React**, **Ember.js** lub **Angular**
        <br>
        Often the projects we implement have one of the popular frameworks on the frontend side.
        It's good if you also have experience with one of them.
        <br>
        [technology:react]
        [technology:emberjs]
        [technology:backbonejs]
        [technology:angularjs]<I>

  DESCRIPTION
}

job_offer.attributes = {
  locale: :pl,
  description: <<~DESCRIPTION.chomp
    Chcesz z nami pracować?
    Bardzo nas to cieszy.
    Trudno jest obiektywnie (liczbowo lub opisowo) określić poziom znajomości różnych technologii.
    Dlatego zastanów się czy chcesz i jesteś w stanie pracować w technologiach, których używamy.

    ## Używane technologie

    1.  **HTML** i **CSS**
        <br>
        Znajmość HTML i CSS jest podstawową rzeczą w naszej pracy.
        <br>
        [technology:html5]
        [technology:css3]

    2.  **JavaScript**
        <br>
        Chcemy, aby aplikacje internetowe były dynamiczne i interaktywne.
        Dlatego używamy JavaScript.
        <br>
        [technology:javascript]

    3.  **CoffeeScript** lub **TypeScript**
        <br>
        Często używamy technologii, które ułatwiają nam programowanie.
        Aby pisać lepszy kod w JavaScript używamy TypeScript lub CoffeeScript.
        <br>
        [technology:typescript]
        [technology:coffeescript]

    4.  **Haml** lub **Slim**
        <br>
        Jako alternatywa dla HTML-a korzystamy z Haml-a lub Slim-a.
        <br>
        [technology:haml]

    5.  **Sass** lub **Less**
        <br>
        Dla sprawnej pracy z CSS-ami używamy Sass / Scss lub Less.
        <br>
        [technology:sass]
        [technology:less]

    6.  **Git**
        <br>
        Aby łatwo i przyjemnie zarządzać zmianami w kodzie używamy Git-a.
        Jeśli znasz już jakiś inny system kontroli wersji to Git-a szybko się nauczysz.
        <br>
        [technology:git]

    7.  **Ruby**
        <br>
        Spośród wielu języków programowania Ruby jest jednym z naszych ulubionych.
        <br>
        [technology:ruby]

    8.  **Ruby on Rails**
        <br>
        Używamy Ruby on Rails jako główny framework po stronie serwera.
        <br>
        [technology:ruby-on-rails]

    9.  **Rspec** lub **Minitest**
        <br>
        Dbamy o poprawne zachowanie naszego kodu.
        Dlatego piszemy testy w Rspec-u lub minitest.
        <br>
        [technology:rspec]

    10. **PostgreSQL**, **MySQL**, **Redis**
        <br>
        Korzystamy z różnych baz danych w zależności od projektu.
        Najczęściej wykorzystujemy PostgreSQL, ale używaliśmy też MySQL i Redis-a.
        <br>
        [technology:postgresql]
        [technology:mysql]
        [technology:redis]

    11. **React**, **Ember.js** lub **Angular**
        <br>
        Często projekty, które realizujemy posiadają jeden z popularnych frameworków po stronie frontendowej.
        To dobrze, jeśli Ty również masz doświadczenie w jednym z nich.
        <br>
        [technology:react]
        [technology:emberjs]
        [technology:backbonejs]
        [technology:angularjs]<I>

  DESCRIPTION
}

job_offer.save
