# syntax = docker/dockerfile:experimental

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version and Gemfile
# https://github.com/evilmartians/fullstaq-ruby-docker
ARG RUBY_VERSION=3.2.2
ARG VARIANT=jemalloc-bullseye-slim
# FROM ruby:$RUBY_VERSION-slim as base
FROM quay.io/evl.ms/fullstaq-ruby:${RUBY_VERSION}-${VARIANT} as base

ARG BUNDLER_VERSION=2.4.10

# Rails app lives here
WORKDIR /rails

# Set production environment
ENV RAILS_ENV="production" \
    RAILS_LOG_TO_STDOUT="1" \
    BUNDLE_DEPLOYMENT="1" \
    BUNDLE_PATH="/usr/local/bundle" \
    BUNDLE_WITHOUT="development:test"


# Throw-away build stage to reduce size of final image
FROM base as build

ARG BUILD_PACKAGES="build-essential git libvips42 pkg-config libpq-dev curl python-is-python3"

# Install packages needed to build gems
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y ${BUILD_PACKAGES}

# Install application gems
COPY Gemfile Gemfile.lock ./
RUN bundle install && \
    rm -rf ~/.bundle/ "${BUNDLE_PATH}"/ruby/*/cache "${BUNDLE_PATH}"/ruby/*/bundler/gems/*/.git

# RUN bundle exec bootsnap precompile --gemfile

# Copy application code
COPY . .

# Precompile bootsnap code for faster boot times
# RUN bundle exec bootsnap precompile app/ lib/

# Precompiling assets for production without requiring secret RAILS_MASTER_KEY
RUN SECRET_KEY_BASE=DUMMY bundle exec rails assets:precompile

# Final stage for app image
FROM base

ARG DEPLOY_PACKAGES="build-essential git libvips42 pkg-config libpq-dev curl python-is-python3 postgresql-client"

# Install packages needed for deployment
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y ${DEPLOY_PACKAGES} && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Copy built artifacts: gems, application
COPY --from=build /usr/local/bundle /usr/local/bundle
COPY --from=build /rails /rails

# Run and own only the runtime files as a non-root user for security
RUN useradd rails --home /rails --shell /bin/bash && \
    chown -R rails:rails db log public tmp
USER rails:rails

# Start the server by default, this can be overwritten at runtime
EXPOSE 3000
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]
