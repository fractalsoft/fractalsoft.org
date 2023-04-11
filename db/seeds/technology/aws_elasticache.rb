# Amazon ElastiCache
# https://aws.amazon.com/elasticache/
technology_aws_elasticache = Technology.where(slug: 'aws-elasti-cache').first_or_initialize
icon_aws_elasticache_svg = File.read('./db/seeds/technology/svg/aws-elasti-cache.svg')
technology_aws_elasticache.assign_attributes(
  name: 'Amazon ElastiCache',
  title: 'Amazon ElastiCache',
  icon: icon_aws_elasticache_svg
)
technology_aws_elasticache.save
technology_aws_elasticache.amazon_web_services!
