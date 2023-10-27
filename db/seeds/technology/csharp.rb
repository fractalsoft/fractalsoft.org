# C#
technology_csharp = Technology.where(slug: 'csharp').first_or_initialize
icon_csharp_original_svg = File.read('./db/seeds/technology/svg/csharp-original.svg')
technology_csharp.assign_attributes(
  icon: icon_csharp_original_svg,
  name: 'csharp',
  title: 'C#'
)
technology_csharp.save
technology_csharp.backend!
