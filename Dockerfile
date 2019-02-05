FROM ruby:2.6.0

ENV \
  APP_HOME /fractalsoft \
  && RAILS_SERVE_STATIC_FILES true

# zlib1g-dev: for nokogiri
# postgresql-client
RUN \
    curl -sL https://deb.nodesource.com/setup_11.x | bash - \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb http://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y \
    build-essential \
    imagemagick \
    libpq-dev \
    nodejs \
    yarn \
    --no-install-recommends \
    && apt-get -q clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p $APP_HOME

WORKDIR $APP_HOME

COPY Gemfile* ./
RUN \
    gem install bundler \
    && RAILS_ENV=production bundle install --jobs 20 --retry 5 --without development test

COPY . .

RUN \
    RAILS_ENV=production bundle exec rails assets:precompile
