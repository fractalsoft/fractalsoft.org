# frozen_string_literal: true

# questions.hitdea.com
questions_hitdea = Project.where(slug: '20-questions-game').first_or_initialize
questions_hitdea.assign_attributes(
  display: true,
  dofollow: false,
  title: '20 questions game',
  url: nil,
  year: 2014
)

I18n.locale = :en

questions_hitdea.description = %()

questions_hitdea.introduction = <<~INTRODUCTION.chomp
  Logic game which learns with every play.
  In the game you have to answer questions asked by the AI and it will try to guess what were you thinking about.
INTRODUCTION

questions_hitdea.subtitle = ''

I18n.locale = :pl

questions_hitdea.description = %()

questions_hitdea.introduction = <<~INTRODUCTION.chomp
  Gra logiczna ucząca się z każdą następną rundą gry.
  Należy w niej odpowiadać na pytania zadawane przez SI (Sztuczną Inteligencję) a aplikacja spróbuje odganąć o czym myślałeś.
INTRODUCTION

questions_hitdea.subtitle = ''

questions_hitdea.save
