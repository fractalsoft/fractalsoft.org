# frozen_string_literal: true

I18n.locale = :pl
ComputerFixService.delete_all
[
  { name: 'Diagnoza z wstępną wyceną', price: 50.0 },
  { name: 'Instalacja systemu operacyjnego, sterowników, programów użytkowych', price: 80.0 },
  { name: 'Czyszczenie wentylatora, wymiana pasty', price: 50.0 },
  { name: 'Naprawa płyty głównej (nie BGA)', price: 150.0 },
  { name: 'Czyszczenie laptopa po zalaniu', price: 120.0 },
  { name: 'Reballing BGA', price: 260.0 },
  { name: 'Wymiana układu BGA (bez ceny części)', price: 240.0 },
  { name: "Aktualizacja BIOS'a", price: 30.0 },
  { name: "Aktualizacja BIOS'a (programowanie wlutowanego układu)", price: 60.0 },
  { name: 'Naprawa zasilacza', price: 60.0 },
  { name: 'Naprawa gniazda zasilania, USB, audio', price: 100.0 },
  { name: 'Wymiana lub naprawa innych części w laptopie', price: 150.0 },
  { name: 'Usuwanie wirusów oraz złośliwego oprogramowania', price: 60.0 },
  { name: 'Naprawa monitora LCD', price: 250.0 },
  { name: 'Archiwizacja danych', price: 30.0 }
].each_with_index do |params, index|
  ComputerFixService.create position: index + 1, currency: 'PLN', **params
end
I18n.locale = :en
