# Content Import (Projects + Contributions)

This folder contains the structured source-of-truth content for NDA-safe, value-first case studies.

## Structure

- `projects/*.yml` - one file per project slug
- `contributions/*.yml` - one file per person nickname

## Commands

- Validate content: `bin/rails content:validate`
- Import projects only: `bin/rails content:import_projects`
- Import contributions only: `bin/rails content:import_contributions`
- Import all: `bin/rails content:import_all`
