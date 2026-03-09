# frozen_string_literal: true

# FL
nda_julia = Project.where(slug: 'nda-julia').first_or_initialize
nda_julia.assign_attributes(
  display: true,
  dofollow: false,
  title: 'Project Julia (NDA)',
  url: nil,
  year: 2020
)

I18n.locale = :en

nda_julia.description = %()

nda_julia.introduction = <<~INTRODUCTION.chomp
  Global learning platform offering online courses from universities worldwide.
  The platform supports millions of users and thousands of courses across a broad range of industries.
  Partners (universities, organizations, industry partners, and government partners) create different types of courses in the app.
  These include MOOCs (Massive Open Online Courses), ExpertTrack, microcredentials, and degrees.
  Technologically, the application is a modular backend in Ruby on Rails with a React-based frontend.
INTRODUCTION

nda_julia.subtitle = 'digital education platform'

I18n.locale = :pl

nda_julia.description = %()

nda_julia.introduction = <<~INTRODUCTION.chomp
  Globalna platforma edukacyjna oferująca kursy online z uniwersytetów na całym świecie.
  Platforma obsługuje miliony użytkowników i tysiące kursów z różnych branż.
  Partnerzy (uniwersytety, organizacje, partnerzy branżowi i partnerzy rządowi) tworzą w aplikacji różne rodzaje kursów.
  Należą do nich MOOC (masowe otwarte kursy online), ExpertTrack, mikrokredyty i stopnie naukowe.
  Technologicznie aplikacja to modularny backend oparty na Ruby on Rails z frontendem opartym na React.
INTRODUCTION

nda_julia.subtitle = 'cyfrowa platforma edukacyjna'

nda_julia.save
