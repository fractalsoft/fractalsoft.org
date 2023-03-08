# three.js (JavaScript 3D Library)
# https://threejs.org/
technology_three_js = Technology.where(slug: 'three-js').first_or_initialize
icon_three_js_original_svg = File.read('./db/seeds/technology/svg/threejs-original.svg')
icon_three_js_wordmark_svg = File.read('./db/seeds/technology/svg/threejs-original-wordmark.svg')
technology_three_js.assign_attributes(
  name: 'three.js',
  title: 'three.js',
  icon: icon_three_js_original_svg,
  icon_wordmark: icon_three_js_wordmark_svg
)
technology_three_js.save
technology_three_js.gamedev!
