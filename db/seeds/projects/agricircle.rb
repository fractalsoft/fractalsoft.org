# frozen_string_literal: true

# AgriCircle
project_agricircle = Project.where(slug: 'agricircle.com').first_or_initialize
project_agricircle.assign_attributes(
  display: true,
  dofollow: false,
  title: 'AgriCircle',
  year: 2019
)

I18n.locale = :en

project_agricircle.description = %()

project_agricircle.introduction = <<~INTRODUCTION.chomp
  Web application to make better planning process for farmers.
  Geo map service, communication with external services, import / export fields,
  organizer for irrigation, fertilizing, planting and harvesting crops.
INTRODUCTION

project_agricircle.subtitle = 'crop management application'

I18n.locale = :pl

project_agricircle.description = %()

project_agricircle.introduction = <<~INTRODUCTION.chomp
  Aplikacja internetowa usprawniająca proces planowania dla rolników.
  Obsługa map, komunikacja z zewnętrznymi serwisami, import / eksport pól,
  organizer nawadniania, użyźniania, sadzenia i zbierania upraw.
INTRODUCTION

project_agricircle.subtitle = 'aplikacja do zarządzania uprawami'

project_agricircle.save
