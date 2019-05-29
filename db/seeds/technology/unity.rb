# Unity
# https://unity.com/
technology_unity = Technology.where(slug: 'unity').first_or_initialize
icon_unity_original_svg = File.read('./db/seeds/technology/svg/unity3d-original.svg')
technology_unity.assign_attributes(
  name: 'unity',
  title: 'Unity',
  icon: icon_unity_original_svg
)
technology_unity.save
technology_unity.gamedev!
