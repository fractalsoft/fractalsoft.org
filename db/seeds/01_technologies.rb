# frozen_string_literal: true

# Contributions
Technology.delete_all

# backend development
## frameworks
require_relative 'technology/jekyll'
require_relative 'technology/ruby_on_rails'
require_relative 'technology/sinatra'
require_relative 'technology/rails_event_store'
## programming language
require_relative 'technology/csharp'
require_relative 'technology/go'
require_relative 'technology/jruby'
require_relative 'technology/python'
require_relative 'technology/ruby'
require_relative 'technology/truffleruby'

# cloud computing
require_relative 'technology/amazon_web_services'
require_relative 'technology/digital_ocean'
require_relative 'technology/fly_io'
require_relative 'technology/google_cloud'
require_relative 'technology/heroku'
## amazon web services
require_relative 'technology/aws_api_gateway'
require_relative 'technology/aws_cloudformation'
require_relative 'technology/aws_cloudfront'
require_relative 'technology/aws_cloudsearch'
require_relative 'technology/aws_cloudwatch'
require_relative 'technology/aws_codedeploy'
require_relative 'technology/aws_cognito'
require_relative 'technology/aws_dynamodb'
require_relative 'technology/aws_ec2'
require_relative 'technology/aws_elasticache'
require_relative 'technology/aws_glacier'
require_relative 'technology/aws_iam'
require_relative 'technology/aws_kinesis'
require_relative 'technology/aws_lambda'
require_relative 'technology/aws_opsworks'
require_relative 'technology/aws_quicksight'
require_relative 'technology/aws_rds'
require_relative 'technology/aws_route53'
require_relative 'technology/aws_s3'
require_relative 'technology/aws_ses'
require_relative 'technology/aws_sns'
require_relative 'technology/aws_sqs'
require_relative 'technology/aws_waf'

# continuous integration
require_relative 'technology/codeship'
require_relative 'technology/circleci'
require_relative 'technology/github_actions'
require_relative 'technology/hound_ci'
require_relative 'technology/jenkins'
require_relative 'technology/travis_ci'

# database
require_relative 'technology/mysql'
require_relative 'technology/postgresql'
require_relative 'technology/redis'
require_relative 'technology/sqlite'

# frontend development
## frameworks
require_relative 'technology/angularjs'
require_relative 'technology/backbonejs'
require_relative 'technology/emberjs'
require_relative 'technology/gatsby'
require_relative 'technology/marionettejs'
require_relative 'technology/nextjs'
require_relative 'technology/react'
## javascript libraries
require_relative 'technology/jquery'
require_relative 'technology/leaflet'
## programming language
require_relative 'technology/coffeescript'
require_relative 'technology/javascript'
require_relative 'technology/typescript'

# game development
require_relative 'technology/threejs'
require_relative 'technology/unity'

# linters & code formatters
require_relative 'technology/eslint'
require_relative 'technology/prettier'
require_relative 'technology/rubocop'
require_relative 'technology/stylelint'

# mathematical software
require_relative 'technology/mathematica'
require_relative 'technology/matlab'

# mobile development
require_relative 'technology/cordova'

# operating system
require_relative 'technology/alpine_linux'
require_relative 'technology/apple'
require_relative 'technology/debian'
require_relative 'technology/linux'
require_relative 'technology/linux_mint'
require_relative 'technology/opensuse'
require_relative 'technology/red_hat'
require_relative 'technology/slackware'
require_relative 'technology/slax_linux'
require_relative 'technology/ubuntu'

# project management software
require_relative 'technology/pivotal_tracker'
require_relative 'technology/taiga'
require_relative 'technology/trello'

## search engine indexing
require_relative 'technology/apache_solr'
require_relative 'technology/elasticsearch'
require_relative 'technology/opensearch'

# testing
require_relative 'technology/cuprite'
require_relative 'technology/cypress'
require_relative 'technology/ferrum'
require_relative 'technology/jest'
require_relative 'technology/minitest'
require_relative 'technology/playwright'
require_relative 'technology/rspec'
require_relative 'technology/selenium_ide'
require_relative 'technology/selenium_webdriver'
require_relative 'technology/shoulda_matchers'
require_relative 'technology/testcase'

# tools
require_relative 'technology/docker'
require_relative 'technology/git'
require_relative 'technology/github'
require_relative 'technology/graphql'
require_relative 'technology/postgis'
require_relative 'technology/sidekiq'
require_relative 'technology/sonic_pi'
require_relative 'technology/terraform'
## message broker
require_relative 'technology/apache_kafka'

# web
require_relative 'technology/css3'
require_relative 'technology/haml'
require_relative 'technology/html5'
require_relative 'technology/less'
require_relative 'technology/markdown'
require_relative 'technology/sass'
require_relative 'technology/slim'
require_relative 'technology/svg'
## css frameworks
require_relative 'technology/bootstrap'
require_relative 'technology/foundation_framework'

# web server
require_relative 'technology/apache'
require_relative 'technology/nginx'
