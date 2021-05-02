# Slim
# http://slim-lang.com/
technology_slim = Technology.where(slug: 'slim').first_or_initialize
technology_slim.assign_attributes(
  name: 'slim',
  title: 'Slim'
)
technology_slim.save
technology_slim.web!
