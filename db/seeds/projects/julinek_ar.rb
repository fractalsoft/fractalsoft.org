# frozen_string_literal: true

# Julinek AR
# https://apps.apple.com/us/developer/grzegorz-lisowski/id1665804173
# https://play.google.com/store/apps/details?id=com.Trusense.JulinekWyspy
julinek_ar = Project.where(slug: 'julinek-ar').first_or_initialize
julinek_ar.assign_attributes(
  display: true,
  dofollow: false,
  title: 'Julinek AR',
  url: 'https://apps.apple.com/us/developer/grzegorz-lisowski/id1665804173',
  year: 2022
)

I18n.locale = :en

julinek_ar.description = %()

julinek_ar.introduction = <<~INTRODUCTION.chomp
  A simple game based on augmented reality.
  The goal is to explore the former circus base and learn while having fun.
  Technologically, the game is based on Unity engine and written in C#.
  It is a free download from the Apple Store,
  but requires AR markers, which are available in Julinek Park.
INTRODUCTION

julinek_ar.subtitle = 'augmented reality circus game'

I18n.locale = :pl

julinek_ar.description = %()

julinek_ar.introduction = <<~INTRODUCTION.chomp
  Prosta gra oparta na rzeczywistości rozszerzonej.
  Celem jest zwiedzanie dawnej bazy cyrkowej i nauka poprzez zabawę.
  Technologicznie gra bazuje na silniku Unity i napisana jest w C#.
  Można ją pobrać za darmo ze sklepu Apple,
  jednak do prawidłowego działania potrzebne są markery AR dostępne w Julinek Park.
INTRODUCTION

julinek_ar.subtitle = 'cyrkowa gra w rzeczywistości rozszerzonej'

julinek_ar.save
