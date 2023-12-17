# frozen_string_literal: true

# analysis.hitdea.com
analysis_hitdea = Project.where(slug: 'linguistic-analysis').first_or_initialize
analysis_hitdea.assign_attributes(
  display: true,
  dofollow: false,
  title: 'linguistic analysis',
  url: nil,
  year: 2014
)

I18n.locale = :en

analysis_hitdea.description = %()

analysis_hitdea.introduction = <<~INTRODUCTION.chomp
  Linguistic analysis system is used for word processing and automatic category detection.
  The application can also detect the language of the text.
  The database contains over 6 million words in Polish and English.
  The system has a learning mode with a teacher and the categorization is based on statistical methods.
  Application provides an external API.
INTRODUCTION

analysis_hitdea.subtitle = ''

I18n.locale = :pl

analysis_hitdea.description = %()

analysis_hitdea.introduction = <<~INTRODUCTION.chomp
  System analizy językowej służy do przetwarzania tekstów i automatycznego wykrycia kategorii.
  Aplikacja umożliwia również wykrywanie języka tekstu.
  Baza zawiera ponad 6 milionów słów w&nbsp;języku polskim i angielskim.
  System umożliwia włączenie trybu nauki z nauczycielem, a&nbsp;kategoryzacja oparta jest o metody statystyczne.
  Aplikacja udostępnia API zewnętrzne.
INTRODUCTION

analysis_hitdea.subtitle = ''

analysis_hitdea.save
