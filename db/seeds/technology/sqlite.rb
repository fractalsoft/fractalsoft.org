# SQLite
# https://sqlite.org/
technology_sqlite = Technology.where(slug: 'sqlite').first_or_initialize
icon_sqlite_original_svg = File.read('./db/seeds/technology/svg/sqlite.svg')
technology_sqlite.assign_attributes(
  name: 'sqlite',
  title: 'SQLite',
  icon: icon_sqlite_original_svg
)
technology_sqlite.save
technology_sqlite.database!
