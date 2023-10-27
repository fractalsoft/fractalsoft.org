# Ruby
technology_ruby = Technology.where(slug: 'ruby').first_or_initialize
icon_ruby_original_svg = File.read('./db/seeds/technology/svg/ruby-original.svg')
icon_ruby_wordmark_svg = File.read('./db/seeds/technology/svg/ruby-original-wordmark.svg')
technology_ruby.assign_attributes(
  github_repo: 'ruby/ruby',
  icon: icon_ruby_original_svg,
  icon_wordmark: icon_ruby_wordmark_svg,
  name: 'ruby',
  title: 'Ruby',
  website_url: 'https://www.ruby-lang.org/'
)
technology_ruby.save
technology_ruby.backend!
