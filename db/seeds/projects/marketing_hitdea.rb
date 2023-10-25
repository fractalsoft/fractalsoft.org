# marketing.hitdea.com
marketing_hitdea = Project.where(slug: 'ads-system').first_or_initialize
marketing_hitdea.assign_attributes(
  display: true,
  dofollow: false,
  title: 'advertising app',
  url: nil,
  year: 2014
)

I18n.locale = :en

marketing_hitdea.description = %()

marketing_hitdea.introduction = <<~INTRODUCTION.chomp
  Contextual advertising management.
  It uses API of linguistic analysis application and allows to define target group.
INTRODUCTION

marketing_hitdea.subtitle = ''

I18n.locale = :pl

marketing_hitdea.description = %()

marketing_hitdea.introduction = <<~INTRODUCTION.chomp
  Aplikacja do zarządzania reklamą kontekstową.
  Wykorzystuje API aplikacji do analizy językowej oraz umożliwia określić grupę docelową.
INTRODUCTION

marketing_hitdea.subtitle = ''

marketing_hitdea.save
