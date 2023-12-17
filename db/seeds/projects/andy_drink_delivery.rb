# frozen_string_literal: true

# andy drink delivery
# https://be.linkedin.com/company/andydrinks
# https://www.instagram.com/andy_drinks/
# https://www.facebook.com/andydrinkdelivery/
project_andy_drink = Project.where(slug: 'andy-drink-delivery').first_or_initialize
project_andy_drink.assign_attributes(
  display: true,
  dofollow: false,
  title: 'Andy',
  url: 'https://andy.be',
  year: 2022
)

I18n.locale = :en

project_andy_drink.description = %()

project_andy_drink.introduction = <<~INTRODUCTION.chomp
  E-commerce platform for ordering drinks with fast delivery (up to 3 hours) in an eco-friendly way.
  Service is available to individuals and businesses.
  From ordering to delivery to picking up empty bottles and reordering, the entire supply chain is supported.
  Frontend application in Next.js and onion architecture under the hood.
  Microservices built on Sinatra and powered by Apache Kafka.
INTRODUCTION

project_andy_drink.subtitle = 'beverage purchasing & delivery platform'

I18n.locale = :pl

project_andy_drink.description = %()

project_andy_drink.introduction = <<~INTRODUCTION.chomp
  Platforma e-commerce do zamawiania napojów z szybką dostawą (do 3 godzin) w sposób ekologiczny i przyjazny dla środowiska.
  Usługa jest dostępna dla osób fizycznych i firm.
  Od zamówienia, przez dostawę, po odbiór pustych butelek i ponowne zamawianie, obsługiwany jest cały łańcuch dostaw.
  Aplikacja frontendowa w Next.js a pod maską cebulowa architektura (ang. Onion Architecture).
  Mikroserwisy zbudowane na Sinatrze i obsługiwane przez Apache Kafka.
INTRODUCTION

project_andy_drink.subtitle = 'platforma do zakupu i dostawy napojów'

project_andy_drink.save
