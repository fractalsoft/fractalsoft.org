FactoryBot.define do
  factory :technology do
    category { 0 }
    sequence(:slug) { |number| "slug-#{number}" }
  end
end
