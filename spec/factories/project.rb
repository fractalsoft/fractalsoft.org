# frozen_string_literal: true

FactoryBot.define do
  factory :project do
    sequence(:slug) { |number| "slug-#{number}" }
    title { 'Lorem ipsum' }
  end
end
