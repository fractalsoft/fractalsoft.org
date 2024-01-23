# frozen_string_literal: true

# GOBL
project_gobl = Project.where(slug: 'gobl').first_or_initialize
project_gobl.assign_attributes(
  display: false,
  dofollow: false,
  title: 'GOBL',
  year: 2024
)

I18n.locale = :en

project_gobl.description = %()

project_gobl.introduction = <<~INTRODUCTION.chomp
  An open-source project written in Go, standardizing global electronic invoicing with JSON.
  It simplifies document creation, ensures compliance with local regulations, and fosters seamless electronic business communication.
  With a JSON Schema, library, and global tax database, GOBL streamlines the invoicing process for developers.
  The project emphasizes a practical and standardized approach to electronic business document exchange.
INTRODUCTION

project_gobl.subtitle = 'Global JSON Invoicing Standard'

I18n.locale = :pl

project_gobl.description = %()

project_gobl.introduction = <<~INTRODUCTION.chomp
  Projekt o otwartym źródle, napisany w Go, standaryzuje globalne fakturowanie elektroniczne przy użyciu formatu JSON.
  Ułatwia tworzenie dokumentów, zapewnia zgodność z lokalnymi regulacjami i wspiera bezproblemową komunikację biznesową.
  Dzięki JSON Schema, bibliotece i globalnej bazie danych podatkowej, GOBL usprawnia proces fakturowania dla programistów.
  Projekt kładzie nacisk na praktyczne i standaryzowane podejście do wymiany elektronicznych dokumentów biznesowych.
INTRODUCTION

project_gobl.subtitle = 'Globalny Standard Fakturowania w JSON'

project_gobl.save
