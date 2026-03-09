# frozen_string_literal: true

# TMC Hospitality: Bode & Drift
nda_cantor = Project.where(slug: 'nda-cantor').first_or_initialize
nda_cantor.assign_attributes(
  display: true,
  dofollow: false,
  title: 'Project Cantor (NDA)',
  url: nil,
  year: 2020
)

I18n.locale = :en

nda_cantor.description = %()

nda_cantor.introduction = <<~INTRODUCTION.chomp
  The application enables full automation for a hotel chain.
  It supports door lock control and sends automatic email and SMS notifications
  throughout the entire guest journey - from booking to check-in to check-out.
  The system integrated with hotel management platforms like StayNTouch and SynXis,
  as well as external services such as Google and Facebook.
  All of this adds up to thousands of events organized into neatly structured streams in the Rails Event Store.
INTRODUCTION

nda_cantor.subtitle = 'hotel management application'

I18n.locale = :pl

nda_cantor.description = %()

nda_cantor.introduction = <<~INTRODUCTION.chomp
  Aplikacja umożliwia pełną automatyzację sieci hotelowej.
  Obsługuje sterowanie zamkami do drzwi oraz wysyła automatyczne powiadomienia e-mail i SMS
  na każdym etapie pobytu gościa - od rezerwacji, przez zameldowanie, aż po wymeldowanie.
  System został zintegrowany z platformami do zarządzania hotelami, takimi jak StayNTouch i SynXis,
  a także z zewnętrznymi usługami, takimi jak Google i Facebook.
  Wszystko to składa się na tysiące zdarzeń uporządkowanych w przejrzyście ustrukturyzowane strumienie w Rails Event Store.
INTRODUCTION

nda_cantor.subtitle = 'aplikacja do zarządzania hotelami'

nda_cantor.save
