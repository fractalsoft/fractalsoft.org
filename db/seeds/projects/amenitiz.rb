# frozen_string_literal: true

# Amenitiz
project_amenitiz = Project.where(slug: 'amenitiz.com').first_or_initialize
project_amenitiz.assign_attributes(
  display: true,
  dofollow: false,
  title: 'Amenitiz',
  year: 2024
)

I18n.locale = :en

project_amenitiz.description = %()

project_amenitiz.introduction = <<~INTRODUCTION.chomp
  A comprehensive property management platform designed for short-term rental property owners and managers.
  Streamlines operations with tools to manage reservations, channel distribution, and guest communications.
INTRODUCTION

project_amenitiz.subtitle = 'hotel management application'

I18n.locale = :pl

project_amenitiz.description = %()

project_amenitiz.introduction = <<~INTRODUCTION.chomp
  Wszechstronna platforma do zarządzania nieruchomościami, stworzona dla właścicieli i zarządców nieruchomości w segmencie wynajmu krótkoterminowego.
  Usprawniająca operacje dzięki narzędziom do zarządzania rezerwacjami, dystrybucją kanałów i komunikacją z gośćmi.
INTRODUCTION

project_amenitiz.subtitle = 'aplikacja do zarządzania hotelami'

project_amenitiz.save
