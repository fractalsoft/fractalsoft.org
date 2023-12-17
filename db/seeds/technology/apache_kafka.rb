# frozen_string_literal: true

# Apache Kafka
technology_kafka = Technology.where(slug: 'kafka').first_or_initialize
icon_kafka_original_svg = File.read('./db/seeds/technology/svg/apache_kafka.svg')
icon_kafka_wordmark_svg = File.read('./db/seeds/technology/svg/apache_kafka_wordtype.svg')
technology_kafka.assign_attributes(
  emoji: '🦍🐘💬',
  icon: icon_kafka_original_svg,
  icon_wordmark: icon_kafka_wordmark_svg,
  name: 'Kafka',
  title: 'Apache Kafka',
  website_url: 'https://kafka.apache.org/'
)
technology_kafka.save
technology_kafka.tool!
