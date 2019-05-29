# MySQL
# https://www.mysql.com/
technology_mysql = Technology.where(slug: 'mysql').first_or_initialize
icon_mysql_original_svg = File.read('./db/seeds/technology/svg/mysql-original.svg')
icon_mysql_wordmark_svg = File.read('./db/seeds/technology/svg/mysql-original-wordmark.svg')
technology_mysql.assign_attributes(
  name: 'mysql',
  title: 'MySQL',
  icon: icon_mysql_original_svg,
  icon_wordmark: icon_mysql_wordmark_svg
)
technology_mysql.save
technology_mysql.database!
