# Linux Mint
technology_linux_mint = Technology.where(slug: 'linux-mint').first_or_initialize
icon_linux_mint_svg = File.read('./db/seeds/technology/svg/linux-mint.svg')
technology_linux_mint.assign_attributes(
  github_repo: 'linuxmint',
  icon: icon_linux_mint_svg,
  name: 'Linux Mint',
  title: 'Linux Mint',
  website_url: 'https://linuxmint.com/'
)
technology_linux_mint.save
technology_linux_mint.operating_system!
