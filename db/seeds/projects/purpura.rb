# frozen_string_literal: true

# Purpura
project_purpura = Project.where(slug: 'purpura.eu').first_or_initialize
project_purpura.assign_attributes(
  display: true,
  dofollow: false,
  title: 'Purpura',
  url: 'http://purpura.eu',
  year: 2017
)

I18n.locale = :en

project_purpura.subtitle = 'design handcrafted tiles application'

project_purpura.introduction = <<~INTRODUCTION.chomp
  Application supporting design hand-made ceramic tiles.
  Users can choose the shapes, patterns and colors.
  Ordering process is a multi-step and requires an individual valuation, because the tiles are manufactured by hand.
INTRODUCTION

project_purpura.description = %()

I18n.locale = :pl

project_purpura.description = %()

project_purpura.introduction = <<~INTRODUCTION.chomp
  Aplikacja wspomagająca projektowanie ręcznie wykonywanych kafli ceramicznych.
  Użytkownicy mogą dobierać kształty, wzory i kolory.
  Proces zamawiania jest wieloetapowy i wymaga indywidualnej wyceny, ponieważ płytki są wyrabiane ręcznie.
INTRODUCTION

project_purpura.subtitle = 'aplikacja do projektowania płytek'

project_purpura.save
