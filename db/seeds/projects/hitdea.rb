# frozen_string_literal: true

# Hitdea
project_hitdea = Project.where(slug: 'hitdea.com').first_or_initialize
project_hitdea.assign_attributes(
  display: true,
  dofollow: false,
  title: 'hitdea',
  year: 2015
)

I18n.locale = :en

project_hitdea.description = %()

project_hitdea.introduction = <<~INTRODUCTION.chomp
  Collaborative web-based platform for idea management.
  It allows to empower people to gather ideas but also process them in a creative, productive and simple way.
  Based on the methodology CPS 6.1 (Creative Problem Solving).
INTRODUCTION

project_hitdea.subtitle = 'based on microservices'

I18n.locale = :pl

project_hitdea.description = %()

project_hitdea.introduction = <<~INTRODUCTION.chomp
  Platforma internetowa do zarządzania pomysłami.
  Umożliwia użytkownikom zbierać pomysły oraz przetwarzać je w kreatywny, wydajny i prosty sposób.
  Bazuje na metodologii CPS 6.1 (Creative Problem Solving).
INTRODUCTION

project_hitdea.subtitle = 'aplikacja oparta o&nbsp;mikroserwisy'

project_hitdea.save
