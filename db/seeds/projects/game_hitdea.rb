# game.hitdea.com
game_hitdea = Project.where(slug: 'wordmaker').first_or_initialize
game_hitdea.assign_attributes(
  display: true,
  dofollow: false,
  title: 'wordmaker',
  url: nil,
  year: 2014
)

I18n.locale = :en

game_hitdea.description = %()

game_hitdea.introduction = <<~INTRODUCTION.chomp
  Game of words based on English and Polish languages.
  Create as many different words as possible from randomly selected letters.
  Word verification is based on the external API linguistic analysis.
INTRODUCTION

game_hitdea.subtitle = ''

I18n.locale = :pl

game_hitdea.description = %()

game_hitdea.introduction = <<~INTRODUCTION.chomp
  Gra w słowa oparta o język angielski i polski.
  Stworzenie jak najwięcej różnych słów z losowo wybranych liter.
  Weryfikacja słowa wykorzytuje zewnętrzne API systemu analizy językowej.
INTRODUCTION

game_hitdea.subtitle = ''

game_hitdea.save
