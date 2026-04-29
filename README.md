# Fractal Soft

Public source code for the [Fractal Soft](http://fractalsoft.org) website.

## Code Status

![Pipeline Status](https://github.com/fractalsoft/fractalsoft.org/actions/workflows/pipeline.yaml/badge.svg)

## Stack

- Ruby `3.3.4`
- Rails `8`
- PostgreSQL `13`

## Quick Start (Local)

1. Install dependencies:
   - Ruby `3.3.4`
   - PostgreSQL `13`

2. Install gems and prepare the database:

```bash
bin/setup
```

1. Start the development process manager:

```bash
bin/dev
```

The app is available at [http://localhost:5000](http://localhost:5000).

## Quick Start (Docker Development)

Use the dedicated development compose file:

```bash
docker compose -f docker-compose.dev.yml up --build
```

This uses `Dockerfile.dev` (development image) and avoids production
asset precompile during image build.
The app container runs `bin/dev` (Rails + asset watchers).
Docker runs `bin/dev` with `FOREMAN_ENV_FILE=/dev/null` so container DB
settings are not overridden by local `.env` defaults.

The app is available at [http://localhost:3000](http://localhost:3000).

To stop and remove containers:

```bash
docker compose -f docker-compose.dev.yml down
```

## Deployment

Deployments are handled with Fly.io via GitHub Actions.
Use the `Deploy to production` workflow (`workflow_dispatch`) to run a
manual deploy, which executes `flyctl deploy --remote-only`.

## Useful Commands

```bash
bin/rails db:prepare     # create/migrate database
bin/rails test           # run tests
bin/rubocop              # run RuboCop
bin/brakeman             # run Brakeman security checks
```
