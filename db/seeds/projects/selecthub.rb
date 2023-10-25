# SelectHub
project_selecthub = Project.where(slug: 'selecthub.com').first_or_initialize
project_selecthub.assign_attributes(
  display: true,
  dofollow: false,
  title: 'SelectHub',
  url: 'https://www.selecthub.com/',
  year: 2016
)

I18n.locale = :en

project_selecthub.description = %()

project_selecthub.introduction = <<~INTRODUCTION.chomp
  Platform for business to evaluate and acquire the software products.
  It allows comparison of different IT solutions depending on customer needs.
  Software vendors give access to the database of leads.
INTRODUCTION

project_selecthub.subtitle = %()

I18n.locale = :pl

project_selecthub.description = %()

project_selecthub.introduction = <<~INTRODUCTION.chomp
  Platforma dla firm do oceniania i nabywania oprogramowania.
  Umożliwia porównanie różnych rozwiązań IT w zależności od potrzeb klienta.
  Producentom oprogramowania daje dostęp do bazy potencjalnych klientów.
INTRODUCTION

project_selecthub.subtitle = %()

project_selecthub.save
