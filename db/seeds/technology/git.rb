# Git
# https://git-scm.com/
technology_git = Technology.where(slug: 'git').first_or_initialize
icon_git_original_svg = File.read('./db/seeds/technology/svg/git-original.svg')
icon_git_wordmark_svg = File.read('./db/seeds/technology/svg/git-original-wordmark.svg')
technology_git.assign_attributes(
  name: 'git',
  title: 'Git',
  icon: icon_git_original_svg,
  icon_wordmark: icon_git_wordmark_svg
)
technology_git.save
technology_git.tool!
