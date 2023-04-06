# Linux Mint
# https://linuxmint.com/
technology_linux_mint = Technology.where(slug: 'linux-mint').first_or_initialize
icon_linux_mint_svg = File.read('./db/seeds/technology/svg/linux-mint.svg')
technology_linux_mint.assign_attributes(
  name: 'Linux Mint',
  title: 'Linux Mint',
  icon: icon_linux_mint_svg
)
technology_linux_mint.save
technology_linux_mint.operating_system!
