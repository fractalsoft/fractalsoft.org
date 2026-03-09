# frozen_string_literal: true

# https://be.linkedin.com/company/andydrinks
# https://www.instagram.com/andy_drinks/
# https://www.facebook.com/andydrinkdelivery/
nda_koch = Project.where(slug: 'nda-koch').first_or_initialize
nda_koch.assign_attributes(
  display: true,
  dofollow: false,
  title: 'Project Koch (NDA)',
  url: nil,
  year: 2022
)

I18n.locale = :en

nda_koch.description = %()

nda_koch.introduction = <<~INTRODUCTION.chomp
  E-commerce platform for ordering consumer products with fast delivery (within a few hours) in an eco-friendly way.
  Service is available to individuals and businesses.
  From ordering to delivery to return logistics and reordering, the entire supply chain is supported.
  Frontend application in a modern React-based framework and onion architecture under the hood.
  Microservices built on a lightweight Ruby framework and powered by a distributed event streaming platform.
INTRODUCTION

nda_koch.subtitle = 'fast ordering & delivery platform'

I18n.locale = :pl

nda_koch.description = %()

nda_koch.introduction = <<~INTRODUCTION.chomp
  Platforma e-commerce do zamawiania produktów z szybką dostawą (w ciągu kilku godzin) w sposób ekologiczny i przyjazny dla środowiska.
  Usługa jest dostępna dla osób fizycznych i firm.
  Od zamówienia, przez dostawę, po logistykę zwrotów i ponowne zamawianie, obsługiwany jest cały łańcuch dostaw.
  Aplikacja frontendowa w nowoczesnym frameworku opartym na React a pod maską zastosowano architekturę warstwową (ang. Onion Architecture).
  Mikroserwisy zbudowane na lekkim frameworku Ruby i obsługiwane przez platformę do przetwarzania zdarzeń w czasie rzeczywistym.
INTRODUCTION

nda_koch.subtitle = 'platforma do szybkiego zamawiania i dostawy produktów'

nda_koch.save
