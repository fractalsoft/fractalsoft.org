# Office in Gliwice (Srednia)
office_address_gliwice_srednia = OfficeAddress.where(slug: 'gliwice-srednia').first_or_initialize
office_address_gliwice_srednia.assign_attributes(
  city: 'Gliwice',
  iso_3166_code: 'PL',
  latitude: BigDecimal('50.29539334461822'),
  longitude: BigDecimal('18.666247576475143'),
  map_link: 'https://www.openstreetmap.org/export/embed.html?bbox=18.66407632827759%2C50.294623988249924%2C18.668418824672703%2C50.296162688545294&layer=mapnik&marker=50.29539334461822%2C18.666247576475143',
  position: 1,
  postcode: '44-100',
  street_with_number: 'ul. Średnia 24/5'
)

I18n.locale = :en
office_address_gliwice_srednia.country = 'Poland'
office_address_gliwice_srednia.name = 'Gliwice Office'

I18n.locale = :pl
office_address_gliwice_srednia.country = 'Polska'
office_address_gliwice_srednia.name = 'Biuro Gliwice'

office_address_gliwice_srednia.save

# Office in Gliwice (Poniatowskiego)
office_address_gliwice_poniatowskiego = OfficeAddress.where(slug: 'gliwice-poniatowskiego').first_or_initialize
office_address_gliwice_poniatowskiego.assign_attributes(
  city: 'Gliwice',
  iso_3166_code: 'PL',
  latitude: BigDecimal('50.30249'),
  longitude: BigDecimal('18.69275'),
  map_link: 'https://www.openstreetmap.org/export/embed.html?bbox=18.69023591279984%2C50.30172935216233%2C18.694591820240024%2C50.30325069073261&layer=mapnik&marker=50.30249%2C18.69275',
  position: 2,
  postcode: '44-100',
  street_with_number: 'ul. Księcia Józefa Poniatowskiego 29/4'
)

I18n.locale = :en
office_address_gliwice_poniatowskiego.country = 'Poland'
office_address_gliwice_poniatowskiego.name = 'Gliwice Workspace'

I18n.locale = :pl
office_address_gliwice_poniatowskiego.country = 'Polska'
office_address_gliwice_poniatowskiego.name = 'Pracownia Gliwice'

office_address_gliwice_poniatowskiego.save
