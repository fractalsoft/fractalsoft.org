# frozen_string_literal: true

# futurelearn
project_futurelearn = Project.where(slug: 'futurelearn.com').first_or_initialize
project_futurelearn.assign_attributes(
  display: true,
  dofollow: false,
  title: 'FutureLearn',
  url: 'https://futurelearn.com',
  year: 2020
)

I18n.locale = :en

project_futurelearn.description = %()

project_futurelearn.introduction = <<~INTRODUCTION.chomp
  Global learning platform offering online courses from universities worldwide.
  Over 19 million users, thousands of courses in dozens of industries.
  Partners (universities, organizations, industry partners, and government partners) create different types of courses in the app.
  These include MOOCs (Massive Open Online Courses), ExpertTrack, microcredentials, and degrees.
  Technologically, the application is a Rails monolith with a React frontend.
INTRODUCTION

project_futurelearn.subtitle = 'digital education platform'

I18n.locale = :pl

project_futurelearn.description = %()

project_futurelearn.introduction = <<~INTRODUCTION.chomp
  Globalna platforma edukacyjna oferująca kursy online z uniwersytetów na całym świecie.
  Ponad 19 milionów użytkowników, tysiące kursów w dziesiątkach branż.
  Partnerzy (uniwersytety, organizacje, partnerzy branżowi i partnerzy rządowi) tworzą w aplikacji różne rodzaje kursów.
  Należą do nich MOOC (masowe otwarte kursy online), ExpertTrack, mikrokredyty i stopnie naukowe.
  Technologicznie aplikacja jest monolitem Rails-owym z frontendem React-owym.
INTRODUCTION

project_futurelearn.subtitle = 'cyfrowa platforma edukacyjna'

project_futurelearn.save
