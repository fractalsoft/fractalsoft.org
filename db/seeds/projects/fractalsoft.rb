# frozen_string_literal: true

# Fractal Soft
fractalsoft = Project.where(slug: 'fractalsoft.org').first_or_initialize
fractalsoft.assign_attributes(
  display: false,
  dofollow: true,
  title: 'Website Fractal Soft',
  url: 'https://fractalsoft.org',
  year: 2018
)

I18n.locale = :en

fractalsoft.description = %()

fractalsoft.introduction = <<~INTRODUCTION.chomp
  This is our company website.
  It shouldn't be complicated.
  The task of this site is to show what and how we do.
  We work on it in our free time.
  The project is public and anyone can look at the code.
INTRODUCTION

fractalsoft.subtitle = 'software house'

I18n.locale = :pl

fractalsoft.description = %()

fractalsoft.introduction = <<~INTRODUCTION.chomp
  To nasza strona firmy.
  Nie ma być skomplikowana.
  Zadaniem tej strony jest pokazanie co i jak robimy.
  Pracujemy nad nią w wolnym czasie.
  Projekt jest publiczny i każdy może spojrzeć w kod.
INTRODUCTION

fractalsoft.subtitle = 'firma programistyczna'

fractalsoft.save
