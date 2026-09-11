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

Production lives on Fly.io as the app `fractalsoft-staging`
(historical name) and is served at [https://fractalsoft.org](https://fractalsoft.org).
Deploys are manual GitHub Actions only. Nothing deploys on push.

### One-time setup

1. Create an app-scoped Fly deploy token:
   `fly tokens create deploy -x 999999h --app fractalsoft-staging`
2. In the GitHub repo, open **Settings → Environments → production**
   (created automatically on the first workflow run if missing).
3. Add a secret named `FLY_API_TOKEN` with the full token value.
   Copy it exactly, including the `FlyV1` prefix and the space after it.

### Run a deploy

1. Open **Actions → Deploy to production → Run workflow**.
2. Choose the branch (usually `main`).
3. Set **Action** to `status` to inspect the live app without changing
   it, or `deploy` to build and release.
4. `deploy` runs `flyctl deploy --remote-only`, then Fly executes
   `scripts/deploy/after_release` (cache clear, migrate, seed).

## Useful Commands

```bash
bin/rails db:prepare     # create/migrate database
bin/rails test           # run tests
bin/rubocop              # run RuboCop
bin/brakeman             # run Brakeman security checks
```
