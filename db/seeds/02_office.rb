# Office in Cieszyn
office_address_cieszyn = OfficeAddress.where(slug: 'cieszyn').first_or_initialize
office_address_cieszyn.assign_attributes(
  city: 'Cieszyn',
  iso_3166_code: 'PL',
  latitude: BigDecimal('49.748297833181816'),
  longitude: BigDecimal('18.630715012550354'),
  map_link: 'https://www.openstreetmap.org/export/embed.html?bbox=18.629009127616886%2C49.74753179676538%2C18.632412850856785%2C49.749088120517136&layer=mapnik&marker=49.74830996488296%2C18.63071098923683',
  position: 1,
  postcode: '43-400',
  street_with_number: 'ul. Trzech Braci 3/1'
)

I18n.locale = :en
office_address_cieszyn.country = 'Poland'
office_address_cieszyn.name = 'Cieszyn Office'

I18n.locale = :pl
office_address_cieszyn.country = 'Polska'
office_address_cieszyn.name = 'Biuro Cieszyn'

office_address_cieszyn.save

# Office in Gliwice
office_address_gliwice = OfficeAddress.where(slug: 'gliwice').first_or_initialize
office_address_gliwice.assign_attributes(
  city: 'Gliwice',
  iso_3166_code: 'PL',
  latitude: BigDecimal('50.29539334461822'),
  longitude: BigDecimal('18.666247576475143'),
  map_link: 'https://www.openstreetmap.org/export/embed.html?bbox=18.66407632827759%2C50.294623988249924%2C18.668418824672703%2C50.296162688545294&layer=mapnik&marker=50.29539334461822%2C18.666247576475143',
  position: 2,
  postcode: '44-100',
  street_with_number: 'ul. Średnia 24/5'
)

I18n.locale = :en
office_address_gliwice.country = 'Poland'
office_address_gliwice.name = 'Gliwice Office'

I18n.locale = :pl
office_address_gliwice.country = 'Polska'
office_address_gliwice.name = 'Biuro Gliwice'

office_address_gliwice.save
