# syntax = docker/dockerfile:experimental

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version and Gemfile
ARG RUBY_VERSION=3.3.4
# Debian 11 (bullseye) LTS ended 2026-08-31; its apt security metadata is expired.
FROM ruby:${RUBY_VERSION}-bookworm AS base

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

# Precompile assets without production secrets. Fly runtime env (including
# RAILS_MASTER_KEY) is not available during image build.
# SECRET_KEY_BASE_DUMMY supplies a throwaway secret_key_base.
# The dummy RAILS_MASTER_KEY only satisfies Rails boot when
# config.require_master_key is true; there is no credentials.yml.enc to decrypt.
RUN SECRET_KEY_BASE_DUMMY=1 \
    RAILS_MASTER_KEY=00000000000000000000000000000000 \
    bundle exec rails assets:precompile

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
