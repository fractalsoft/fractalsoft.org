# frozen_string_literal: true

# nopaperwork
project_nopaperwork = Project.where(slug: 'nopaperwork.org').first_or_initialize
project_nopaperwork.assign_attributes(
  display: true,
  dofollow: true,
  title: 'nopaperwork',
  url: 'https://nopaperwork.org/',
  year: 2019
)

I18n.locale = :en

project_nopaperwork.description = %()

project_nopaperwork.introduction = <<~INTRODUCTION.chomp
  Management business with no paperwork.
  Customer service, create invoices, order management.
  All in one place, easy-to-use and painless.
  Available API in standard JSON API (in progress).
INTRODUCTION

project_nopaperwork.subtitle = 'business management application'

I18n.locale = :pl

project_nopaperwork.description = %()

project_nopaperwork.introduction = <<~INTRODUCTION.chomp
  Zarządzanie małą firmą bez zbędnych formalności.
  Obsługa klientów, tworzenie faktur, zarządzanie zamówieniami.
  Wszystko w jednym miejscu, łatwe w obsłudze i bezbolesne.
  Rozwijane jest API w standardzie JSON API.
INTRODUCTION

project_nopaperwork.subtitle = 'aplikacja do zarządzania firmą'

project_nopaperwork.save
