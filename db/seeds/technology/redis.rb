# Redis
technology_redis = Technology.where(slug: 'redis').first_or_initialize
icon_redis_original_svg = File.read('./db/seeds/technology/svg/redis-original.svg')
icon_redis_wordmark_svg = File.read('./db/seeds/technology/svg/redis-original-wordmark.svg')
technology_redis.assign_attributes(
  github_repo: 'redis/redis',
  icon: icon_redis_original_svg,
  icon_wordmark: icon_redis_wordmark_svg,
  name: 'redis',
  title: 'Redis',
  website_url: 'https://redis.io/'
)
technology_redis.save
technology_redis.database!
