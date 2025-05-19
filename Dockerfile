# syntax = docker/dockerfile:experimental

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version and Gemfile
# https://github.com/evilmartians/fullstaq-ruby-docker
ARG RUBY_VERSION=3.3.4
FROM ruby:${RUBY_VERSION}-bullseye AS base

ARG BUNDLER_VERSION=2.5.11

# Rails app lives here
WORKDIR /rails

# Set production environment variables
ENV RAILS_ENV="production" \
    RAILS_LOG_TO_STDOUT="1" \
    BUNDLE_DEPLOYMENT="1" \
    BUNDLE_PATH="/usr/local/bundle" \
    BUNDLE_WITHOUT="development:test"

# Temporary build stage
FROM base AS build

ARG BUILD_PACKAGES="build-essential git libvips42 pkg-config libpq-dev curl python-is-python3 libyaml-dev"

# Install build dependencies
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y ${BUILD_PACKAGES} && \
    rm -rf /var/lib/apt/lists/*

# Install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v "${BUNDLER_VERSION}" && \
    bundle install && \
    rm -rf ~/.bundle "${BUNDLE_PATH}"/ruby/*/cache "${BUNDLE_PATH}"/ruby/*/bundler/gems/*/.git

# Copy application code
COPY . .

# Precompile assets without requiring secret key
RUN SECRET_KEY_BASE=DUMMY bundle exec rails assets:precompile

# Final image
FROM base

ARG DEPLOY_PACKAGES="libvips42 libpq5 curl postgresql-client libyaml-0-2"

# Install runtime dependencies
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y ${DEPLOY_PACKAGES} && \
    rm -rf /var/lib/apt/lists/*

# Copy app and gems from build stage
COPY --from=build /usr/local/bundle /usr/local/bundle
COPY --from=build /rails /rails

# Create app user and fix permissions
RUN useradd rails --home /rails --shell /bin/bash && \
    chown -R rails:rails /rails
USER rails:rails

# Default server command
EXPOSE 3000
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]
