# frozen_string_literal: true

# blog.fractalsoft.org
blog = Project.where(slug: 'blog.fractalsoft.org').first_or_initialize
blog.assign_attributes(
  display: false,
  dofollow: true,
  title: 'Blog Fractal Soft',
  url: 'https://blog.fractalsoft.org',
  year: 2018
)

I18n.locale = :en
blog.description = %()
blog.introduction = %()
blog.subtitle = 'technical blog'

I18n.locale = :pl
blog.description = %()
blog.introduction = %()
blog.subtitle = 'blog techniczny'

blog.save
