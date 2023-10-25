# TMC Hospitality: Bode & Drift
tmc_ops = Project.where(slug: 'tmc-ops').first_or_initialize
tmc_ops.assign_attributes(
  display: true,
  dofollow: false,
  title: 'Bode & Drift Ops',
  url: nil,
  year: 2020
)

I18n.locale = :en

tmc_ops.description = %()

tmc_ops.introduction = <<~INTRODUCTION.chomp
  The Ops application allowed the Bode and Drift chain of hotels in North and Central America to be fully automated.
  Door lock control, automatic email and SMS notifications
  from booking to check-in to final guest check-out.
  Integrations with other hotel management platforms (StayNTouch, SynXis) and other services (Google, Facebook).
  All of this adds up to thousands of events combined into neatly organized streams in the Rails Event Store.
INTRODUCTION

tmc_ops.subtitle = 'hotel management application'

I18n.locale = :pl

tmc_ops.description = %()

tmc_ops.introduction = <<~INTRODUCTION.chomp
  Aplikacja Ops pozwoliła na pełną automatyzację sieci hoteli Bode oraz Drift w Ameryce Północnej i Środkowej.
  Sterowanie zamkami do drzwi, automatyczne powiadomienia e-mail i SMS od rezerwacji,
  aż do zameldowania i ostatecznego wymeldowania.
  Integracje z innymi platformami do zarządzania hotelami (StayNTouch, SynXis) i innymi usługami (Google, Facebook).
  Wszystko to składa się na tysiące wydarzeń połączonych w zgrabne strumienie w Rails Event Store.
INTRODUCTION

tmc_ops.subtitle = 'aplikacja do zarządzania hotelami'

tmc_ops.save
